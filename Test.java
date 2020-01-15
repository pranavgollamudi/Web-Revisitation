import java.util.*;
import java.awt.*;
class Test 
{
	public static void main(String[] args) 
	{
		
		List<ProcessesInfo> processesList = JProcesses.getProcessList();

for (final ProcessesInfo processInfo : processesList) {
    System.out.println("Process PID: " + processInfo.getPid());
    System.out.println("Process Name: " + processInfo.getName());
    System.out.println("Process Used Time: " + processInfo.getTime());
    System.out.println("------------------");
}}
}
