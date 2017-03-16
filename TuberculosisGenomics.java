/*
 This software is designed to process the whole genome data of tuberculosis.

Software was developed using free IDE Netbeans 8.1.02 available at https://netbeans.org/downloads/
Thank you for your attention and patience.
Matvey Sprindzuk, Belarus, Minsk, UIIP, +375 29 567 10 73, msprindzhuk@mail.ru
 */

package tuberculosisgenomics;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;



/**
 *
 * @author Friends
 * 
 * 
 */
public class TuberculosisGenomics extends Application {

    @Override
    public void start(Stage primaryStage) throws IOException {
        Button btn = new Button();

        btn.setText("Save input result");

        Button btnzero = new Button();

        btnzero.setText("Download FASTQs");

        final Button btntwo = new Button();

        btntwo.setText("Perform alignment with BWA");

        Button btnthree = new Button();

        btnthree.setText("Convert and sort BAM");

        Button btnfour = new Button();

        btnfour.setText("Call genome variants with Pilon");

        Button btnfive = new Button();

        btnfive.setText("Reduce Pilon VCF file");
        
    
        Button btnsix = new Button();

        btnsix.setText("Decompose Pilon VCF file");
        
         
        Button btnseven = new Button();

        btnseven.setText("Annotate results with SNPEff");

        Label label = new Label("Whole genome data processor Uranium Sun 2017");
        
        

        final TextField textField = new TextField("Input SRA identifier");
        textField.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent e) {
                System.out.println(textField.getText());
            }
        });

        btn.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent event) { // function to save widget input into the text file
                try (BufferedWriter bw = new BufferedWriter(new FileWriter("SRAIdentifiers.txt", true))) {
                    bw.write(textField.getText());
                    bw.newLine();
                    bw.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }
        });
        
        btnzero.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                CallLinuxShell.run();
            }

        });

       
        

        btntwo.setOnAction(new EventHandler<ActionEvent>() {

            @Override

            public void handle(ActionEvent event) {
                CallLinuxShell.run_bwa();
            }

        });
         btnthree.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                CallLinuxShell.run_converter();
            }

        });

        
        btnfour.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                CallLinuxShell.run_pilon();
            }

        });
        btnfive.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                CallLinuxShell.reducevcf();
            }

        });
        btnsix.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                CallLinuxShell.decomposevcf();
            }

        });

        btnseven.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                CallLinuxShell.run_annotation_snpeff();
            }

        });


        Stage stage = new Stage();
        /* creating palette for putting widget elements on it */

        final VBox layout = new VBox(10);
        layout.setAlignment(Pos.CENTER);
        layout.getChildren().addAll(label, textField, btn, btnzero,  btntwo, btnthree, btnfour, btnfive, btnsix, btnseven);
        layout.setStyle("-fx-background-color: aquamarine; -fx-padding: 12; -fx-font-size: 20;");
        /* nice way we color FX app */

        stage.setScene(new Scene(layout));
        stage.show();
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) { // main function to run the application
        launch(args);

    }
}