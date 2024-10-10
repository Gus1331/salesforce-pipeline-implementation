@isTest
private class Process2ControllerTest {
    
    @isTest
    static void testarProcesso2Verdadeiro() {
        Boolean entrada = true;
        Boolean resultado = Process2Service.process2(entrada);
        System.assertEquals(true, resultado, 'O resultado deve ser true quando a entrada é true');
    }

    @isTest
    static void testarProcesso2Falso() {
        Boolean entrada = false;
        Boolean resultado = Process2Service.process2(entrada);
        System.assertEquals(false, resultado, 'O resultado deve ser false quando a entrada é false');
    }

    @isTest
    static void testarDeProcesso2Verdadeiro() {
        Boolean entrada = true;
        Boolean resultado = Process2Service.deProcess2(entrada);
        System.assertEquals(false, resultado, 'O resultado deve ser false quando a entrada é true');
    }

    @isTest
    static void testarDeProcesso2Falso() {
        Boolean entrada = false;
        Boolean resultado = Process2Service.deProcess2(entrada);
        System.assertEquals(true, resultado, 'O resultado deve ser true quando a entrada é false');
    }
}