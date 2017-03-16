/*
 This software is designed to process the whole genome data of tuberculosis.

Software was developed using free IDE Netbeans 8.1.02 available at https://netbeans.org/downloads/
Thank you for your attention and patience.
Matvey Sprindzuk, Belarus, Minsk, UIIP, +375 29 567 10 73, msprindzhuk@mail.ru
 */

package tuberculosisgenomics;

import java.io.IOException;
import org.apache.commons.exec.CommandLine; // use externall Exec Apache jar file as library of requried functions
import org.apache.commons.exec.DefaultExecutor;
import org.apache.commons.exec.ExecuteException;

public class CallLinuxShell {

    static void run() {
        CallLinuxShell testScript = new CallLinuxShell();
        testScript.runScript("./get_fastq_from_python_sra.sh"); // run download of the FASTQ file
    }

    static void run_bwa() {
        CallLinuxShell testScript = new CallLinuxShell();
        testScript.runScript("./aligner_single.sh"); // BWA aligner execution
    }
//      static void run_snap() {
//        CallLinuxShell testScript = new CallLinuxShell();
//        testScript.runScript("/home/mat29/NetBeansProjects/TuberculosisGenomics/get_fastq_from_python_sra.sh"); // change body of generated methods, choose Tools | Templates.
//    }

    static void run_converter() {
        CallLinuxShell testScript = new CallLinuxShell();
        testScript.runScript("./convert.sh"); // converting SAM to BAM and indexing it
    }
//        static void run_varscan() {
//        CallLinuxShell testScript = new CallLinuxShell();
//        testScript.runScript("/home/mat29/NetBeansProjects/TuberculosisGenomics/get_fastq_from_python_sra.sh"); // change body of generated methods, choose Tools | Templates.
//    }

    static void run_pilon() {
        CallLinuxShell testScript = new CallLinuxShell();
        testScript.runScript("./call_variants_pilon.sh"); // Calling variants with Pilon 
    }

    static void reducevcf() {
        CallLinuxShell testScript = new CallLinuxShell();
        testScript.runScript("./call_reducevcf.sh"); // Reduce the VCF output of the Pilon
    }

    static void decomposevcf() {
        CallLinuxShell testScript = new CallLinuxShell();
        testScript.runScript("./norm.sh"); // Pre/postprocess VCF file to make it compatible with annotation engines
    }

    static void run_annotation_snpeff() {
        CallLinuxShell testScript = new CallLinuxShell();
        testScript.runScript("./call_snpeff.sh"); // Perform annotation of the resultant VCF file
    }

    int iExitValue;
    String sCommandString;

    public void runScript(String command) {
        sCommandString = command;
        CommandLine oCmdLine = CommandLine.parse(sCommandString);
        DefaultExecutor oDefaultExecutor = new DefaultExecutor();
        oDefaultExecutor.setExitValue(0);
        try {
            iExitValue = oDefaultExecutor.execute(oCmdLine);
        } catch (ExecuteException e) {
            System.err.println("Execution failed.");
            e.printStackTrace();
        } catch (IOException e) {
            System.err.println("permission denied.");
            e.printStackTrace();
        }
    }

    }
