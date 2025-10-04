package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class PacketSignal {
    private static final Map<Integer, String> SIGNALS;
    byte[] payload;
    public int recipientChannelID;
    public String signalName;

    static {
        HashMap hashMap = new HashMap();
        SIGNALS = hashMap;
        hashMap.put(AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-847861442234705856L, 1145048585409934015L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{4896472651987651586L, -4794488331585941415L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-2551774888867555109L, 1761046085233906440L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{1571186953417261521L, -5004882150647790314L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{8711272630094854327L, -3026817858612317396L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{2076804428206437370L, -6572723740780161679L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-3256428344014474481L, 4499680500718786376L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{612151442636249173L, -5197531314879806291L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-8516158867003290926L, -813125358159189515L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-5562122713531035397L, 3394803703138325291L}), hashMap, AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-5264378045647061784L, -3232966813714861624L}), hashMap, 14, 1), 2), 9), 13), 15), 6), 8), 4), 3), 11), 5), new ObfuscatedString(new long[]{1546868482604502370L, -8417441470600672997L}).toString());
    }

    public PacketSignal(int i, String str) {
        this.recipientChannelID = i;
        this.signalName = str.startsWith(new ObfuscatedString(new long[]{6491806740906426689L, 8306230508293206780L}).toString()) ? str.substring(3) : str;
    }

    public static String strsignal(int i) {
        return SIGNALS.get(Integer.valueOf(i));
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(98);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{6073385801990290893L, 2137855928261757523L}).toString());
            m3327x9738a56c.writeBoolean(false);
            m3327x9738a56c.writeString(this.signalName);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
