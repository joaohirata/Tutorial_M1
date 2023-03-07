extends Node2D

var valor
var num
var nomeUsuario
var nomeUsuarioAtualizado
var lista = [] # Criando todas as variáveis, e adicionando o var na frente da variável lista 

func _on_Button_pressed(): #Quando a pessoa clicar nesse botão, oque estiver escrito no lineedit1 e 2 será salvo nas variaveis nomeUsuario e num, resepctivamente
	nomeUsuario = $LineEdit.text
	num = int($LineEdit2.text)

func _on_Button2_pressed(): #Essa funcao vai criar uma lista com os 10 numeros que vem depois do numero escolhido pela pessoa
	for k in range(10):
		num = num + 1
		lista.append(num)
	$Label.text = str(lista) #Essa funcao vai mostrar no label essa lista

func _on_Button3_pressed(): #E nessa funcao eu percorro todo essa lista, verifico se existe algum numero impar, e se existir, adiciono baldo no final do nome, atribuo isso a uma nova variavel e depois coloca a variavel no label.
	for k in lista:
		if k % 2 == 0:
			pass
		else:
			nomeUsuarioAtualizado = nomeUsuario+'baldo'
			break
	$Label2.text = nomeUsuarioAtualizado
