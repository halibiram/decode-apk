package com.journeyapps.barcodescanner;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class DefaultDecoderFactory implements DecoderFactory {
    private String characterSet;
    private Collection<BarcodeFormat> decodeFormats;
    private Map<DecodeHintType, ?> hints;
    private int scanType;

    public DefaultDecoderFactory() {
    }

    @Override // com.journeyapps.barcodescanner.DecoderFactory
    public Decoder createDecoder(Map<DecodeHintType, ?> map) {
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        enumMap.putAll(map);
        Map<DecodeHintType, ?> map2 = this.hints;
        if (map2 != null) {
            enumMap.putAll(map2);
        }
        Collection<BarcodeFormat> collection = this.decodeFormats;
        if (collection != null) {
            enumMap.put((EnumMap) DecodeHintType.POSSIBLE_FORMATS, (DecodeHintType) collection);
        }
        String str = this.characterSet;
        if (str != null) {
            enumMap.put((EnumMap) DecodeHintType.CHARACTER_SET, (DecodeHintType) str);
        }
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        multiFormatReader.setHints(enumMap);
        int i = this.scanType;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return new Decoder(multiFormatReader);
                }
                return new MixedDecoder(multiFormatReader);
            }
            return new InvertedDecoder(multiFormatReader);
        }
        return new Decoder(multiFormatReader);
    }

    public DefaultDecoderFactory(Collection<BarcodeFormat> collection) {
        this.decodeFormats = collection;
    }

    public DefaultDecoderFactory(Collection<BarcodeFormat> collection, Map<DecodeHintType, ?> map, String str, int i) {
        this.decodeFormats = collection;
        this.hints = map;
        this.characterSet = str;
        this.scanType = i;
    }
}
