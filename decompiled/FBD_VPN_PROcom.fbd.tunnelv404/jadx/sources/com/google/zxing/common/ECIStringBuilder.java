package com.google.zxing.common;

import com.google.zxing.FormatException;
import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public final class ECIStringBuilder {
    private StringBuilder currentBytes;
    private Charset currentCharset;
    private StringBuilder result;

    public ECIStringBuilder() {
        this.currentCharset = StandardCharsets.ISO_8859_1;
        this.currentBytes = new StringBuilder();
    }

    private void encodeCurrentBytesIfAny() {
        Charset charset = this.currentCharset;
        Charset charset2 = StandardCharsets.ISO_8859_1;
        if (charset.equals(charset2)) {
            if (this.currentBytes.length() > 0) {
                StringBuilder sb = this.result;
                if (sb == null) {
                    this.result = this.currentBytes;
                    this.currentBytes = new StringBuilder();
                    return;
                } else {
                    sb.append((CharSequence) this.currentBytes);
                    this.currentBytes = new StringBuilder();
                    return;
                }
            }
            return;
        }
        if (this.currentBytes.length() > 0) {
            byte[] bytes = this.currentBytes.toString().getBytes(charset2);
            this.currentBytes = new StringBuilder();
            StringBuilder sb2 = this.result;
            if (sb2 == null) {
                this.result = new StringBuilder(new String(bytes, this.currentCharset));
            } else {
                sb2.append(new String(bytes, this.currentCharset));
            }
        }
    }

    public void append(char c) {
        this.currentBytes.append((char) (c & 255));
    }

    public void appendCharacters(StringBuilder sb) {
        encodeCurrentBytesIfAny();
        this.result.append((CharSequence) sb);
    }

    public void appendECI(int i) {
        encodeCurrentBytesIfAny();
        CharacterSetECI characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(i);
        if (characterSetECIByValue != null) {
            this.currentCharset = characterSetECIByValue.getCharset();
            return;
        }
        throw FormatException.getFormatInstance();
    }

    public boolean isEmpty() {
        StringBuilder sb;
        if (this.currentBytes.length() == 0 && ((sb = this.result) == null || sb.length() == 0)) {
            return true;
        }
        return false;
    }

    public int length() {
        return toString().length();
    }

    public String toString() {
        encodeCurrentBytesIfAny();
        StringBuilder sb = this.result;
        if (sb == null) {
            return new ObfuscatedString(new long[]{1262490946931643538L}).toString();
        }
        return sb.toString();
    }

    public void append(byte b) {
        this.currentBytes.append((char) (b & 255));
    }

    public void append(String str) {
        this.currentBytes.append(str);
    }

    public ECIStringBuilder(int i) {
        this.currentCharset = StandardCharsets.ISO_8859_1;
        this.currentBytes = new StringBuilder(i);
    }

    public void append(int i) {
        append(String.valueOf(i));
    }
}
