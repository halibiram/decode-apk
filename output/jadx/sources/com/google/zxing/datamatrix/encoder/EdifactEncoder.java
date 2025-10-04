package com.google.zxing.datamatrix.encoder;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class EdifactEncoder implements Encoder {
    private static void encodeChar(char c, StringBuilder sb) {
        if (c >= ' ' && c <= '?') {
            sb.append(c);
        } else if (c >= '@' && c <= '^') {
            sb.append((char) (c - '@'));
        } else {
            HighLevelEncoder.illegalCharacter(c);
        }
    }

    private static String encodeToCodewords(CharSequence charSequence) {
        char c;
        char c2;
        int length = charSequence.length();
        if (length != 0) {
            char c3 = 0;
            char charAt = charSequence.charAt(0);
            if (length >= 2) {
                c = charSequence.charAt(1);
            } else {
                c = 0;
            }
            if (length >= 3) {
                c2 = charSequence.charAt(2);
            } else {
                c2 = 0;
            }
            if (length >= 4) {
                c3 = charSequence.charAt(3);
            }
            int i = (charAt << 18) + (c << '\f') + (c2 << 6) + c3;
            char c4 = (char) ((i >> 16) & 255);
            char c5 = (char) ((i >> 8) & 255);
            char c6 = (char) (i & 255);
            StringBuilder sb = new StringBuilder(3);
            sb.append(c4);
            if (length >= 2) {
                sb.append(c5);
            }
            if (length >= 3) {
                sb.append(c6);
            }
            return sb.toString();
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{2120404468427522981L, 6244610846575087596L, -3980599135652689366L, 1949401871271389052L, 4656507735132678820L}).toString());
    }

    private static void handleEOD(EncoderContext encoderContext, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                return;
            }
            boolean z = true;
            if (length == 1) {
                encoderContext.updateSymbolInfo();
                int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount();
                int remainingCharacters = encoderContext.getRemainingCharacters();
                if (remainingCharacters > dataCapacity) {
                    encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + 1);
                    dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount();
                }
                if (remainingCharacters <= dataCapacity && dataCapacity <= 2) {
                    return;
                }
            }
            if (length <= 4) {
                int i = length - 1;
                String encodeToCodewords = encodeToCodewords(charSequence);
                if (encoderContext.hasMoreCharacters() || i > 2) {
                    z = false;
                }
                if (i <= 2) {
                    encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + i);
                    if (encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount() >= 3) {
                        encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + encodeToCodewords.length());
                        z = false;
                    }
                }
                if (z) {
                    encoderContext.resetSymbolInfo();
                    encoderContext.pos -= i;
                } else {
                    encoderContext.writeCodewords(encodeToCodewords);
                }
                return;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{8465930083547665668L, 369176868637637180L, -5213595147992936415L, 1371407580355277302L}).toString());
        } finally {
            encoderContext.signalEncoderChange(0);
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            encodeChar(encoderContext.getCurrentChar(), sb);
            encoderContext.pos++;
            if (sb.length() >= 4) {
                encoderContext.writeCodewords(encodeToCodewords(sb));
                sb.delete(0, 4);
                if (HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode()) != getEncodingMode()) {
                    encoderContext.signalEncoderChange(0);
                    break;
                }
            }
        }
        sb.append((char) 31);
        handleEOD(encoderContext, sb);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 4;
    }
}
