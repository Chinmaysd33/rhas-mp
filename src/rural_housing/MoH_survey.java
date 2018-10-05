/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rural_housing;

/**
 *
 * @author Abhik
 */
public class MoH_survey extends javax.swing.JFrame {

    /**
     * Creates new form MoH_survey
     */
    public MoH_survey() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        submit = new javax.swing.JButton();
        state = new javax.swing.JComboBox<>();
        jLabel7 = new javax.swing.JLabel();
        district = new javax.swing.JComboBox<>();
        taluka = new javax.swing.JComboBox<>();
        village = new javax.swing.JComboBox<>();
        jPanel1 = new javax.swing.JPanel();
        view_det = new javax.swing.JButton();
        home = new javax.swing.JButton();
        log_out = new javax.swing.JButton();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        app_com = new javax.swing.JButton();
        app_csm = new javax.swing.JButton();
        app_sur = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(1200, 960));
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(0, 51, 51));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/rural_housing/Logo.JPG"))); // NOI18N

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(407, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addGap(330, 330, 330))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(jLabel1)
                .addContainerGap(44, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1250, 180));

        jPanel3.setBackground(new java.awt.Color(0, 153, 153));

        jLabel2.setFont(new java.awt.Font("Comic Sans MS", 1, 36)); // NOI18N
        jLabel2.setText("Survey Agency Appointment");

        jLabel4.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        jLabel4.setText("Project State:");

        jLabel5.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        jLabel5.setText("Project Village:");

        jLabel6.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        jLabel6.setText("Project District:");

        submit.setBackground(new java.awt.Color(0, 153, 153));
        submit.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        submit.setMnemonic('S');
        submit.setText("SUBMIT");
        submit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                submitActionPerformed(evt);
            }
        });

        state.setBackground(new java.awt.Color(0, 204, 204));
        state.setFont(new java.awt.Font("Comic Sans MS", 0, 24)); // NOI18N
        state.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "-Select State-", "Chhattisgarh", "Maharashtra", "Madhya Pradesh", "West Bengal" }));
        state.setToolTipText("");
        state.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                stateItemStateChanged(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        jLabel7.setText("Project Taluka:");

        district.setBackground(new java.awt.Color(0, 204, 204));
        district.setFont(new java.awt.Font("Comic Sans MS", 0, 24)); // NOI18N
        district.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "-Select District-" }));

        taluka.setBackground(new java.awt.Color(0, 204, 204));
        taluka.setFont(new java.awt.Font("Comic Sans MS", 0, 24)); // NOI18N
        taluka.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "-Select Taluka-" }));

        village.setBackground(new java.awt.Color(0, 204, 204));
        village.setFont(new java.awt.Font("Comic Sans MS", 0, 24)); // NOI18N
        village.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "-Select Village-" }));
        village.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                villageActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(109, Short.MAX_VALUE)
                .addComponent(jLabel2)
                .addGap(232, 232, 232))
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(332, 332, 332)
                        .addComponent(submit))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(157, 157, 157)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(jLabel4)
                                .addComponent(jLabel6)
                                .addComponent(jLabel7))
                            .addGroup(jPanel3Layout.createSequentialGroup()
                                .addGap(9, 9, 9)
                                .addComponent(jLabel5)))
                        .addGap(96, 96, 96)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(village, javax.swing.GroupLayout.PREFERRED_SIZE, 261, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(state, javax.swing.GroupLayout.PREFERRED_SIZE, 261, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(district, javax.swing.GroupLayout.PREFERRED_SIZE, 261, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(taluka, javax.swing.GroupLayout.PREFERRED_SIZE, 261, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(192, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(state, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(district, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(taluka, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5)
                    .addComponent(village, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(submit)
                .addContainerGap(378, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 180, 920, 720));

        jPanel1.setBackground(new java.awt.Color(0, 204, 204));

        view_det.setBackground(new java.awt.Color(0, 204, 204));
        view_det.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        view_det.setMnemonic('V');
        view_det.setText("View Project Details");
        view_det.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                view_detActionPerformed(evt);
            }
        });

        home.setBackground(new java.awt.Color(0, 204, 204));
        home.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        home.setMnemonic('H');
        home.setText("Home");
        home.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                homeActionPerformed(evt);
            }
        });

        log_out.setBackground(new java.awt.Color(0, 204, 204));
        log_out.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        log_out.setMnemonic('L');
        log_out.setText("Log Out");
        log_out.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                log_outActionPerformed(evt);
            }
        });

        jLabel17.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        jLabel17.setText("Ministry Of Housing");

        jLabel18.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        jLabel18.setText("Login");

        app_com.setBackground(new java.awt.Color(0, 204, 204));
        app_com.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        app_com.setMnemonic('A');
        app_com.setText("Appoint Company");
        app_com.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                app_comActionPerformed(evt);
            }
        });

        app_csm.setBackground(new java.awt.Color(0, 204, 204));
        app_csm.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        app_csm.setMnemonic('C');
        app_csm.setText("Appoint CSMC Agent");
        app_csm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                app_csmActionPerformed(evt);
            }
        });

        app_sur.setBackground(new java.awt.Color(0, 204, 204));
        app_sur.setFont(new java.awt.Font("Comic Sans MS", 1, 24)); // NOI18N
        app_sur.setMnemonic('S');
        app_sur.setText("Appoint Survey Agency");
        app_sur.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                app_surActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel17)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(86, 86, 86)
                        .addComponent(jLabel18)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(120, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(log_out, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(home, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(94, 94, 94))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(app_csm, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(app_com, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(view_det, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(app_sur, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(0, 0, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel17)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel18)
                .addGap(111, 111, 111)
                .addComponent(view_det)
                .addGap(49, 49, 49)
                .addComponent(app_com)
                .addGap(43, 43, 43)
                .addComponent(app_csm)
                .addGap(44, 44, 44)
                .addComponent(app_sur)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 78, Short.MAX_VALUE)
                .addComponent(home)
                .addGap(50, 50, 50)
                .addComponent(log_out)
                .addGap(83, 83, 83))
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 180, 330, 780));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void submitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_submitActionPerformed

    }//GEN-LAST:event_submitActionPerformed

    private void stateItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_stateItemStateChanged
        if(state.getSelectedItem().toString().equalsIgnoreCase("Maharashtra"))
        {
            district.removeAllItems();
            district.addItem("Buldhana");
            district.addItem("Nashik");
            district.addItem("Pune");
        }
        else if(state.getSelectedItem().toString().equalsIgnoreCase("Chhattisgarh"))
        {
            district.removeAllItems();
            district.addItem("Bilaspur");
            district.addItem("Korba");
            district.addItem("Raipur");
        }
        else if(state.getSelectedItem().toString().equalsIgnoreCase("West Bengal"))
        {
            district.removeAllItems();
            district.addItem("Hoogly");
            district.addItem("Birbhum");
            district.addItem("South 24 Parganas");
        }
        else if(state.getSelectedItem().toString().equalsIgnoreCase("Madhya pradesh"))
        {
            district.removeAllItems();
            district.addItem("");
            district.addItem("");
            district.addItem("");
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_stateItemStateChanged

    private void villageActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_villageActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_villageActionPerformed

    private void view_detActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_view_detActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_view_detActionPerformed

    private void homeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_homeActionPerformed
        this.setVisible(false);
        MoH_main re = new MoH_main();
        re.setVisible(true);
        // TODO add your handling code here:
    }//GEN-LAST:event_homeActionPerformed

    private void log_outActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_log_outActionPerformed
        this.setVisible(false);
        login re = new login();
        re.setVisible(true);
        // TODO add your handling code here:
    }//GEN-LAST:event_log_outActionPerformed

    private void app_comActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_app_comActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_app_comActionPerformed

    private void app_csmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_app_csmActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_app_csmActionPerformed

    private void app_surActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_app_surActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_app_surActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(MoH_survey.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MoH_survey.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MoH_survey.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MoH_survey.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MoH_survey().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton app_com;
    private javax.swing.JButton app_csm;
    private javax.swing.JButton app_sur;
    private javax.swing.JComboBox<String> district;
    private javax.swing.JButton home;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JButton log_out;
    private javax.swing.JComboBox<String> state;
    private javax.swing.JButton submit;
    private javax.swing.JComboBox<String> taluka;
    private javax.swing.JButton view_det;
    private javax.swing.JComboBox<String> village;
    // End of variables declaration//GEN-END:variables
}