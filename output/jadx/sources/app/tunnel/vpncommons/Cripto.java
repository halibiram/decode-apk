package app.tunnel.vpncommons;

import java.io.InputStream;
import java.io.OutputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

/* loaded from: classes.dex */
public class Cripto {
    public static void decrypt(String str, InputStream inputStream, OutputStream outputStream) {
        m916xfbe0c504(str, 2, inputStream, outputStream);
    }

    public static void encrypt(String str, InputStream inputStream, OutputStream outputStream) {
        m916xfbe0c504(str, 1, inputStream, outputStream);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m916xfbe0c504(String str, int i, InputStream inputStream, OutputStream outputStream) {
        SecretKey generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(str.getBytes()));
        Cipher cipher = Cipher.getInstance("DES");
        if (i == 1) {
            cipher.init(1, generateSecret);
            CipherInputStream cipherInputStream = new CipherInputStream(inputStream, cipher);
            byte[] bArr = new byte[64];
            while (true) {
                int read = cipherInputStream.read(bArr);
                if (read != -1) {
                    outputStream.write(bArr, 0, read);
                } else {
                    outputStream.flush();
                    outputStream.close();
                    cipherInputStream.close();
                    return;
                }
            }
        } else if (i == 2) {
            cipher.init(2, generateSecret);
            CipherOutputStream cipherOutputStream = new CipherOutputStream(outputStream, cipher);
            byte[] bArr2 = new byte[64];
            while (true) {
                int read2 = inputStream.read(bArr2);
                if (read2 != -1) {
                    cipherOutputStream.write(bArr2, 0, read2);
                } else {
                    cipherOutputStream.flush();
                    cipherOutputStream.close();
                    inputStream.close();
                    return;
                }
            }
        }
    }
}
