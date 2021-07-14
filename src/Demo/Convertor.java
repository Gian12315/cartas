public class Convertor {
    public String minusculaAMayuscula(String entrada) {
        char[] a = entrada.toCharArray();
        for (int i = 0; i < a.length; i++) {
            if (a[i] >= 'a' && a[i] <= 'z' || a[i] == 'ñ' || a[i] == 'á' || a[i] == 'é' || a[i] == 'í' || a[i] == 'ó'
                    || a[i] == 'ú') {
                a[i] = (char) (a[i] - 32);
            }
        }
        return new String(a);
    }
}
