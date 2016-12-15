# Script para automatização da geração de atas de projeto de graduação I e II
# do curso de ciência da computação
# Usamos o modelo latex proposto pelo professor Tiago Almeida (classe chamada uftdocs)
# Autores: Rafael Lima de Carvalho e Tiago Almeida da Silva
# Palmas, 15/12/2016
# requerimentos: uma pasta vazia chamada output para escrita dos pdfs!s

#TODO: Verificar se a pasta output existe, e confirmar com o usuário se quer
# deletá-la ou ainda oferecer a opção de setar que pasta ele deseja para o output
import sys
import csv
import os
from datetime import date
def getFirstName(name):
    return name.split()[0]

def processDate(ddate):
    return ddate.split('/')

def getLastName(name):
    finalName = ''
    firstName = True
    for w in name.split():
        if firstName:
            firstName = False
            continue
        finalName+=' '+w
    return finalName

def listToDict(line):
    keys = ['Local', 'Data', 'Horário', 'Aluno', 'TituloOrientador', 'Orientador', 'Título', 'TituloExaminer1', 'Examiner1', 'TituloExaminer2','Examiner2', 'TituloExaminer3', 'Examiner3', 'Tipo']
    dic = {}
    for i in range(len(line)):
        dic[keys[i]] = line[i]
    return dic

if __name__=="__main__":
    #pegar o nome do arquivo csv
    if len(sys.argv)<2:
        print("Uso: python3 {0} path to file.csv".format(sys.argv[0]))
        sys.exit()
    print("teste")
    with open(sys.argv[1], newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter = ',', quotechar='\"')
        firstLine = True
        for currentLine in reader:
            if firstLine:
                firstLine = False
                continue
            currentLine = listToDict(currentLine)
            print(currentLine)
            #para cada linha retirar o dicionário
            output = "\\class{{{0}}}\n".format(currentLine['Tipo'])
            output += "\\author{{{0}}}{{{1}}}\n".format(getFirstName(currentLine['Aluno']), getLastName(currentLine['Aluno']))
            output += "\\titlePG{{{0}}}\n".format(currentLine['Título'])
            output += "\\advisor{{Prof.}}{{{0}}}{{{1}}}{{{2}}}\n".format(getFirstName(currentLine['Orientador']), getLastName(currentLine['Orientador']), currentLine['TituloOrientador'])
            output += "\\examiner{{Prof.}}{{{0}}}{{{1}}}\n".format(currentLine['Examiner1'], currentLine['TituloExaminer1'])
            output += "\\examiner{{Prof.}}{{{0}}}{{{1}}}\n".format(currentLine['Examiner2'], currentLine['TituloExaminer2'])
            output += "\\examiner{{Prof.}}{{{0}}}{{{1}}}\n".format(currentLine['Examiner3'], currentLine['TituloExaminer3'])
            output += "\\makeAtaPGnota\n"
            if currentLine['Tipo'] == "TCC2":
                output += "\\makeAtaPG\n" # sem nota
            if currentLine['Tipo'] == "TCC1":
                output+= "\\makeRecomendacao\n"

            output += "\\makeDeclaracaoPG\n"
            # save output to file tccentry.tex
            with open('tccentry.tex', 'w') as out:
                out.write(output + '\n')
            day, month, year = processDate(currentLine['Data'])
            outputData = "\\date{{{0}}}{{{1}}}{{{2}}}\n".format(day, month, year)
            #save outputData to data.tex
            with open('data.tex', 'w') as out:
                out.write(outputData + '\n')

            os.system('pdflatex ata_pg2.tex >pdflatex.out')
            os.rename('ata_pg2.pdf', 'output/{0}.pdf'.format(currentLine['Aluno']))
            #mv the pdf file to output
            #sys.exit()
