<?php
define("MAIN_DIR", "/home/xtreamcodes/iptv_xtream_codes/");
define("CONFIG_CRYPT_KEY", "5709650b0d7806074842c6de575025b1");

function xor_parse($data, $key) {
    $i = 0;
    $output = '';
    foreach (str_split($data) as $char) {
	    $output.= chr(ord($char) ^ ord($key[$i++ % strlen($key)]));
    }
    return $output;
}

$_INFO = json_decode(xor_parse(base64_decode(file_get_contents(MAIN_DIR . "config")), CONFIG_CRYPT_KEY), True);
if (!$db = new mysqli($_INFO["host"], $_INFO["db_user"], $_INFO["db_pass"], $_INFO["db_name"], $_INFO["db_port"])) { exit("No MySQL connection!"); } 

// Collect live PID's
$rLive = explode("\n", trim(shell_exec("pgrep ffmpeg")));
echo count($rLive)." live processes found\n";
// Collect required PID's
$rPIDs = Array();
$result = $db->query("SELECT DISTINCT(`pid`) AS `pid` FROM `streams_sys` WHERE `pid` > 0 AND `pid` IS NOT NULL AND `server_id` = ".intval($_INFO["server_id"]).";");
if (($result) && ($result->num_rows > 0)) { while ($row = $result->fetch_assoc()) { $rPIDs[] = $row["pid"]; } }
$result = $db->query("SELECT DISTINCT(`monitor_pid`) AS `pid` FROM `streams_sys` WHERE `monitor_pid` > 0 AND `monitor_pid` IS NOT NULL AND `server_id` = ".intval($_INFO["server_id"]).";");
if (($result) && ($result->num_rows > 0)) { while ($row = $result->fetch_assoc()) { $rPIDs[] = $row["pid"]; } }
$result = $db->query("SELECT DISTINCT(`delay_pid`) AS `pid` FROM `streams_sys` WHERE `delay_pid` > 0 AND `delay_pid` IS NOT NULL AND `server_id` = ".intval($_INFO["server_id"]).";");
if (($result) && ($result->num_rows > 0)) { while ($row = $result->fetch_assoc()) { $rPIDs[] = $row["pid"]; } }
$result = $db->query("SELECT DISTINCT(`tv_archive_pid`) AS `pid` FROM `streams` WHERE `tv_archive_pid` > 0 AND `tv_archive_pid` IS NOT NULL AND `tv_archive_server_id` = ".intval($_INFO["server_id"]).";");
if (($result) && ($result->num_rows > 0)) { while ($row = $result->fetch_assoc()) { $rPIDs[] = $row["pid"]; } }
$result = $db->query("SELECT DISTINCT(`pid`) AS `pid` FROM `user_activity_now` WHERE `pid` > 0 AND `pid` IS NOT NULL AND `server_id` = ".intval($_INFO["server_id"]).";");
if (($result) && ($result->num_rows > 0)) { while ($row = $result->fetch_assoc()) { $rPIDs[] = $row["pid"]; } }
echo count($rPIDs)." required processes found\n";
// Kill redundant PID's.
foreach ($rLive as $rPID) {
    if (!in_array($rPID, $rPIDs)) {
        echo "Killed redundant process ".$rPID."\n";
        shell_exec("kill -9 ".$rPID);
    }
}
?>