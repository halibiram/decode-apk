package com.trilead.ssh2.signature;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.crypto.CertificateDecoder;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import net.i2p.crypto.eddsa.EdDSAPrivateKey;
import net.i2p.crypto.eddsa.EdDSAPublicKey;
import net.i2p.crypto.eddsa.EdDSASecurityProvider;
import net.i2p.crypto.eddsa.spec.EdDSANamedCurveSpec;
import net.i2p.crypto.eddsa.spec.EdDSANamedCurveTable;
import net.i2p.crypto.eddsa.spec.EdDSAPrivateKeySpec;
import net.i2p.crypto.eddsa.spec.EdDSAPublicKeySpec;

/* loaded from: classes3.dex */
public class ED25519KeyAlgorithm extends KeyAlgorithm<EdDSAPublicKey, EdDSAPrivateKey> {
    private static final String ED25519_KEY_NAME = new ObfuscatedString(new long[]{-8804509506307101317L, -7249406302519644517L, 2366161847168008892L}).toString();
    private static final String ED25519_CURVE_NAME = new ObfuscatedString(new long[]{-9032666314570009952L, 5021782922838915993L}).toString();

    public ED25519KeyAlgorithm() {
        super(new ObfuscatedString(new long[]{2818852660268078842L, 6148345004151732616L, -2608259324334612304L}).toString(), new ObfuscatedString(new long[]{8845114126808156427L, 6346437861979497026L, -2148633262277536142L}).toString(), EdDSAPrivateKey.class, new EdDSASecurityProvider());
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] decodeSignature(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        if (typesReader.readString().equals(new ObfuscatedString(new long[]{4705827765492338457L, -8153613803863458761L, -3297497765185294536L}).toString())) {
            byte[] readByteString = typesReader.readByteString();
            if (typesReader.remain() == 0) {
                return readByteString;
            }
            throw new IOException(new ObfuscatedString(new long[]{-1046885753336454888L, 4290619065709897930L, 292182332910878278L, 3154384776781673631L, 3376806863712013359L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{62481978251918908L, 2067761422673545507L, -7885071959581305414L, -2728635044901171603L}).toString());
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] encodeSignature(byte[] bArr) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(new ObfuscatedString(new long[]{2398826045289959445L, -5383662242347999910L, 7190592631933890728L}).toString());
        typesWriter.writeString(bArr, 0, bArr.length);
        return typesWriter.getBytes();
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public List<CertificateDecoder> getCertificateDecoders() {
        return Collections.singletonList(new OpenSshCertificateDecoder(new ObfuscatedString(new long[]{-925223691901932361L, -8818735768141728783L, 5964679590889829693L}).toString()) { // from class: com.trilead.ssh2.signature.ED25519KeyAlgorithm.1
            @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder
            public KeyPair generateKeyPair(TypesReader typesReader) {
                EdDSANamedCurveSpec byName = EdDSANamedCurveTable.getByName(new ObfuscatedString(new long[]{-2743108998678986708L, 6988472490297787378L}).toString());
                byte[] readByteString = typesReader.readByteString();
                byte[] readByteString2 = typesReader.readByteString();
                EdDSAPublicKeySpec edDSAPublicKeySpec = new EdDSAPublicKeySpec(readByteString, byName);
                EdDSAPrivateKeySpec edDSAPrivateKeySpec = new EdDSAPrivateKeySpec(Arrays.copyOfRange(readByteString2, 0, 32), byName);
                KeyFactory keyFactory = KeyFactory.getInstance(new ObfuscatedString(new long[]{-5456414766299499411L, -6715159772800270895L}).toString(), new EdDSASecurityProvider());
                return new KeyPair(keyFactory.generatePublic(edDSAPublicKeySpec), keyFactory.generatePrivate(edDSAPrivateKeySpec));
            }
        });
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public EdDSAPublicKey decodePublicKey(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        if (typesReader.readString().equals(new ObfuscatedString(new long[]{1449945046411298714L, -3378496063629005390L, -6822628842387667326L}).toString())) {
            byte[] readByteString = typesReader.readByteString();
            if (typesReader.remain() == 0) {
                return new EdDSAPublicKey(new EdDSAPublicKeySpec(readByteString, EdDSANamedCurveTable.getByName(new ObfuscatedString(new long[]{1310949424445641709L, 1390590397455868350L}).toString())));
            }
            throw new IOException(new ObfuscatedString(new long[]{-245776581640725870L, 1940614261536352184L, 3749109266540922761L, 7655050950301557623L, -4651279426486172993L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{-5517601110428661170L, -6943290133960777213L, -3208844571134438895L}).toString());
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] encodePublicKey(EdDSAPublicKey edDSAPublicKey) {
        byte[] abyte = edDSAPublicKey.getAbyte();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(new ObfuscatedString(new long[]{-2907918984218897648L, 1936510048518492559L, -2638306190609528196L}).toString());
        typesWriter.writeString(abyte, 0, abyte.length);
        return typesWriter.getBytes();
    }
}
