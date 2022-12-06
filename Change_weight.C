//#include "setTDRStyle.C"
#include "TMath.h"
//#include "TROOT.h"
#include <TH1D.h>
#include <TH1D.h>
#include <TH1.h>
#include <TProfile.h>
#include <TStyle.h>
#include <TCanvas.h>
#include <TLeafF.h>
#include <TChain.h>
#include <TFile.h>
#include "TSystem.h"
#include <TChain.h>
#include "TSystem.h"
#include <TString.h>
#include <iostream>
#include <vector>
#include <TPostScript.h>
#include <iostream>
#include <iomanip>  //for precision
#include <string>
void Change_weight()
{
    Float_t weight;
    Float_t new_weight;
    Float_t nentries;
    Float_t old_nentries;
    string inputfile;
    string outputfile;
    string treename;
    // inputfile = "/eos/user/s/shsong/hhwwggFH_root/Datadriven/QCD.root";
    // outputfile = "/eos/user/s/shsong/hhwwggFH_root/Datadriven/QCD_reweight.root";
    inputfile = "/eos/user/s/shsong/hhwwggFH_root/Datadriven/Diphoton.root";
    outputfile = "/eos/user/s/shsong/hhwwggFH_root/Datadriven/Diphoton_reweight.root";
    treename = "Diphoton";
    TFile* oldfile = new TFile(inputfile.c_str(),"READ");
    TTree *oldtree = (TTree*) oldfile->Get(treename.c_str());
    TFile* newfile = new TFile(outputfile.c_str(),"RECREATE");
    TTree *newtree = oldtree->CloneTree(0);
    TBranch *b_weight = oldtree->GetBranch("weight");
    TBranch *b_NewWeight = newtree->GetBranch("weight");
    b_weight->SetAddress(&weight);
    b_NewWeight->SetAddress(&new_weight);
    // Long64_t weight;
    // newtree->SetBranchAddress("weight",&weight,'weight/F');
    nentries = newtree->GetEntries();
    old_nentries = oldtree->GetEntries();
    cout << nentries << endl;
    cout<< old_nentries << endl;
    // cout << oldtree->GetEntires() << endl;
    for (Int_t i=0;i<old_nentries;i++){
        oldtree->GetEntry(i);
        new_weight = weight*1.45275*1.6 ;
        // b_NewWeight->Fill();
        newtree->Fill();
    }
    newtree->Write();
    newfile->Write();
    delete newfile;
    delete oldfile;

}