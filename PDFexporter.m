(* ::Package:: *)

(*
This file is for internal handling and is used to create
pdf printouts of the main code notebook LIRE.nb and the 
Usage and Examples.nb notebook.

It can be run directly from the terminal with the command
   MathKernel -script PDFexporter.m
or it can be run directly from Mathematica.
*)


directory=Quiet[Check[NotebookDirectory[],DirectoryName[$InputFileName]],{FrontEndObject::notavail}];


Export[
FileNameJoin[{directory,"LIRE.pdf"}],
Import[FileNameJoin[{directory,"LIRE.nb"}]]/.{Closed->Open}
];


Export[
FileNameJoin[{directory,"Usage and Examples.pdf"}],
Import[FileNameJoin[{directory,"Usage and Examples.nb"}]]/.{Closed->Open}
];
