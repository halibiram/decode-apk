package com.google.zxing.common;

import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class ECIEncoderSet {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final List<CharsetEncoder> ENCODERS = new ArrayList();
    private final CharsetEncoder[] encoders;
    private final int priorityEncoderIndex;

    static {
        String[] strArr = {new ObfuscatedString(new long[]{-7746337295915335367L, 5702554959178773251L}).toString(), new ObfuscatedString(new long[]{5203874870225421097L, 2130550080553185569L, -2750522015190055541L}).toString(), new ObfuscatedString(new long[]{6543823927794016328L, -1289864122835650180L, -3598578802715857445L}).toString(), new ObfuscatedString(new long[]{-650257260744074381L, -6728486975363425746L, -8478026870663998049L}).toString(), new ObfuscatedString(new long[]{779127527692617056L, 8514714337481925767L, 6515626205299837013L}).toString(), new ObfuscatedString(new long[]{-8577197288111543484L, 1843186424368704645L, -2122018395820554636L}).toString(), new ObfuscatedString(new long[]{7324156050897627517L, 4199090043006036644L, -2692630959863647142L}).toString(), new ObfuscatedString(new long[]{-7495369646758880191L, -7983486381840617546L, 2775319084888402757L}).toString(), new ObfuscatedString(new long[]{2558194239983023202L, -3595991441335203988L, -617334021280240392L}).toString(), new ObfuscatedString(new long[]{-2922221241624734618L, 7969542751183385683L, -5398243185478127296L}).toString(), new ObfuscatedString(new long[]{5490335201885227178L, -8954321261719547295L, 7507512459747436668L}).toString(), new ObfuscatedString(new long[]{682710413726731253L, 5123666185482896012L, 7081695498846834190L}).toString(), new ObfuscatedString(new long[]{4655327651501934630L, -5957108898598127128L, -2485879765422768927L}).toString(), new ObfuscatedString(new long[]{-5918053824930139338L, -6911151632604700738L, 3873905261271935001L}).toString(), new ObfuscatedString(new long[]{-4947756360868661580L, -7896667301322471974L, 9046472222160752609L}).toString(), new ObfuscatedString(new long[]{-4737007003416095296L, -1738599663502075295L, 2875820722063818968L}).toString(), new ObfuscatedString(new long[]{6177268539416608894L, -2727123414679288728L, 4922274180171576610L}).toString(), new ObfuscatedString(new long[]{-8114012749053592729L, 2798515080461767960L, -2832000485975258955L}).toString(), new ObfuscatedString(new long[]{-7884039749893047781L, 314655635226479739L, 5224355484446678191L}).toString(), new ObfuscatedString(new long[]{1666662719248170058L, 567768014017504897L, 6985771348348910628L}).toString()};
        for (int i = 0; i < 20; i++) {
            String str = strArr[i];
            if (CharacterSetECI.getCharacterSetECIByName(str) != null) {
                try {
                    ENCODERS.add(Charset.forName(str).newEncoder());
                } catch (UnsupportedCharsetException unused) {
                }
            }
        }
    }

    public ECIEncoderSet(String str, Charset charset, int i) {
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(StandardCharsets.ISO_8859_1.newEncoder());
        int i2 = 0;
        if (charset != null && charset.name().startsWith(new ObfuscatedString(new long[]{6985061738632665269L, -4488492207609155826L}).toString())) {
            z = true;
        } else {
            z = false;
        }
        for (int i3 = 0; i3 < str.length(); i3++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                CharsetEncoder charsetEncoder = (CharsetEncoder) it.next();
                char charAt = str.charAt(i3);
                if (charAt == i || charsetEncoder.canEncode(charAt)) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
            if (!z2) {
                Iterator<CharsetEncoder> it2 = ENCODERS.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    CharsetEncoder next = it2.next();
                    if (next.canEncode(str.charAt(i3))) {
                        arrayList.add(next);
                        z2 = true;
                        break;
                    }
                }
            }
            if (!z2) {
                z = true;
            }
        }
        if (arrayList.size() == 1 && !z) {
            this.encoders = new CharsetEncoder[]{(CharsetEncoder) arrayList.get(0)};
        } else {
            this.encoders = new CharsetEncoder[arrayList.size() + 2];
            Iterator it3 = arrayList.iterator();
            int i4 = 0;
            while (it3.hasNext()) {
                this.encoders[i4] = (CharsetEncoder) it3.next();
                i4++;
            }
            this.encoders[i4] = StandardCharsets.UTF_8.newEncoder();
            this.encoders[i4 + 1] = StandardCharsets.UTF_16BE.newEncoder();
        }
        if (charset != null) {
            while (true) {
                CharsetEncoder[] charsetEncoderArr = this.encoders;
                if (i2 >= charsetEncoderArr.length) {
                    break;
                }
                if (charsetEncoderArr[i2] != null && charset.name().equals(this.encoders[i2].charset().name())) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        i2 = -1;
        this.priorityEncoderIndex = i2;
    }

    public boolean canEncode(char c, int i) {
        return this.encoders[i].canEncode(new ObfuscatedString(new long[]{-5218505400734972840L}).toString() + c);
    }

    public byte[] encode(char c, int i) {
        return (new ObfuscatedString(new long[]{4527266504887920987L}).toString() + c).getBytes(this.encoders[i].charset());
    }

    public Charset getCharset(int i) {
        return this.encoders[i].charset();
    }

    public String getCharsetName(int i) {
        return this.encoders[i].charset().name();
    }

    public int getECIValue(int i) {
        return CharacterSetECI.getCharacterSetECI(this.encoders[i].charset()).getValue();
    }

    public int getPriorityEncoderIndex() {
        return this.priorityEncoderIndex;
    }

    public int length() {
        return this.encoders.length;
    }

    public byte[] encode(String str, int i) {
        return str.getBytes(this.encoders[i].charset());
    }
}
