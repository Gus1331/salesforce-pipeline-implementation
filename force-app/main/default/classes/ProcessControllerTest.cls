@IsTest
public class ProcessControllerTest {

    @IsTest
    static void testarNumerosPositivos() {
        Integer resultado = ProcessController.process(2, 3);
        System.assertEquals(5, resultado, 'A soma de 2 e 3 deve ser 5');
    }

    @IsTest
    static void testarNumerosNegativos() {
        Integer resultado = ProcessController.process(-2, -3);
        System.assertEquals(-5, resultado, 'A soma de -2 e -3 deve ser -5');
    }

    @IsTest
    static void testarZeroMaisPositivo() {
        Integer resultado = ProcessController.process(0, 4);
        System.assertEquals(4, resultado, 'A soma de 0 e 4 deve ser 4');
    }

    @IsTest
    static void testarZeroMaisNegativo() {
        Integer resultado = ProcessController.process(0, -4);
        System.assertEquals(-4, resultado, 'A soma de 0 e -4 deve ser -4');
    }

    @IsTest
    static void testarPositivoMaisNegativo() {
        Integer resultado = ProcessController.process(5, -3);
        System.assertEquals(2, resultado, 'A soma de 5 e -3 deve ser 2');
    }

    @IsTest
    static void testarNegativoMaisPositivo() {
        Integer resultado = ProcessController.process(-3, 6);
        System.assertEquals(3, resultado, 'A soma de -3 e 6 deve ser 3');
    }

    @IsTest
    static void testarAmbosZero() {
        Integer resultado = ProcessController.process(0, 0);
        System.assertEquals(0, resultado, 'A soma de 0 e 0 deve ser 0');
    }

    @IsTest
    static void testarNumeroMaiorQueZero() {
        Integer resultado = ProcessController.process(10, 0);
        System.assertEquals(10, resultado, 'A soma de 10 e 0 deve ser 10');
    }

    @IsTest
    static void testarNumeroMenorQueZero() {
        Integer resultado = ProcessController.process(-8, 0);
        System.assertEquals(-8, resultado, 'A soma de -8 e 0 deve ser -8');
    }

    @IsTest
    static void testarNumerosPositivosMaiores() {
        Integer resultado = ProcessController.process(100, 50);
        System.assertEquals(150, resultado, 'A soma de 100 e 50 deve ser 150');
    }
    
    @isTest
    static void testarDeProcessComNumerosPositivos() {
        Integer n1 = 10;
        Integer n2 = 5;
        Integer esperado = 5;
        Integer resultado = ProcessService.deProcess(n1, n2);
        System.assertEquals(esperado, resultado, 'Subtração de números positivos falhou');
    }

    @isTest
    static void testarDeProcessComNumerosNegativos() {
        Integer n1 = -10;
        Integer n2 = -5;
        Integer esperado = -5;
        Integer resultado = ProcessService.deProcess(n1, n2);
        System.assertEquals(esperado, resultado, 'Subtração de números negativos falhou');
    }

    @isTest
    static void testarDeProcessComResultadoZero() {
        Integer n1 = 5;
        Integer n2 = 5;
        Integer esperado = 0;
        Integer resultado = ProcessService.deProcess(n1, n2);
        System.assertEquals(esperado, resultado, 'Subtração resultando em zero falhou');
    }

    @isTest
    static void testarDeProcessComNumeroPositivoENegativo() {
        Integer n1 = 5;
        Integer n2 = -3;
        Integer esperado = 8;
        Integer resultado = ProcessService.deProcess(n1, n2);
        System.assertEquals(esperado, resultado, 'Subtração de um número positivo por um número negativo falhou');
    }
}