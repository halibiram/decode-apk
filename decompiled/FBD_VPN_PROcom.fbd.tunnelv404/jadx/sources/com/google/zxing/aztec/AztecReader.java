package com.google.zxing.aztec;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.aztec.decoder.Decoder;
import com.google.zxing.aztec.detector.Detector;
import com.google.zxing.common.DecoderResult;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class AztecReader implements Reader {
    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0072 A[LOOP:0: B:16:0x0070->B:17:0x0072, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.zxing.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) {
        ResultPoint[] resultPointArr;
        int i;
        int i2;
        ResultPoint[] resultPointArr2;
        FormatException formatException;
        ResultPoint[] resultPointArr3;
        List<byte[]> byteSegments;
        String eCLevel;
        ResultPointCallback resultPointCallback;
        AztecDetectorResult detect;
        Detector detector = new Detector(binaryBitmap.getBlackMatrix());
        DecoderResult decoderResult = null;
        try {
            detect = detector.detect(false);
            resultPointArr = detect.getPoints();
            try {
                i = detect.getErrorsCorrected();
            } catch (FormatException e) {
                e = e;
                i = 0;
                i2 = i;
                resultPointArr2 = resultPointArr;
                formatException = e;
                e = null;
                if (decoderResult == null) {
                }
                resultPointArr3 = resultPointArr2;
                int i3 = i2;
                if (map != null) {
                    while (r2 < r3) {
                    }
                }
                Result result = new Result(decoderResult.getText(), decoderResult.getRawBytes(), decoderResult.getNumBits(), resultPointArr3, BarcodeFormat.AZTEC, System.currentTimeMillis());
                byteSegments = decoderResult.getByteSegments();
                if (byteSegments != null) {
                }
                eCLevel = decoderResult.getECLevel();
                if (eCLevel != null) {
                }
                result.putMetadata(ResultMetadataType.ERRORS_CORRECTED, Integer.valueOf(decoderResult.getErrorsCorrected().intValue() + i3));
                result.putMetadata(ResultMetadataType.SYMBOLOGY_IDENTIFIER, new ObfuscatedString(new long[]{-3580106578732960167L, -1957668512034596965L}).toString() + decoderResult.getSymbologyModifier());
                return result;
            } catch (NotFoundException e2) {
                e = e2;
                i = 0;
                i2 = i;
                resultPointArr2 = resultPointArr;
                formatException = null;
                if (decoderResult == null) {
                }
                resultPointArr3 = resultPointArr2;
                int i32 = i2;
                if (map != null) {
                }
                Result result2 = new Result(decoderResult.getText(), decoderResult.getRawBytes(), decoderResult.getNumBits(), resultPointArr3, BarcodeFormat.AZTEC, System.currentTimeMillis());
                byteSegments = decoderResult.getByteSegments();
                if (byteSegments != null) {
                }
                eCLevel = decoderResult.getECLevel();
                if (eCLevel != null) {
                }
                result2.putMetadata(ResultMetadataType.ERRORS_CORRECTED, Integer.valueOf(decoderResult.getErrorsCorrected().intValue() + i32));
                result2.putMetadata(ResultMetadataType.SYMBOLOGY_IDENTIFIER, new ObfuscatedString(new long[]{-3580106578732960167L, -1957668512034596965L}).toString() + decoderResult.getSymbologyModifier());
                return result2;
            }
        } catch (FormatException e3) {
            e = e3;
            resultPointArr = null;
        } catch (NotFoundException e4) {
            e = e4;
            resultPointArr = null;
        }
        try {
            i2 = i;
            resultPointArr2 = resultPointArr;
            formatException = null;
            decoderResult = new Decoder().decode(detect);
            e = null;
        } catch (FormatException e5) {
            e = e5;
            i2 = i;
            resultPointArr2 = resultPointArr;
            formatException = e;
            e = null;
            if (decoderResult == null) {
            }
            resultPointArr3 = resultPointArr2;
            int i322 = i2;
            if (map != null) {
            }
            Result result22 = new Result(decoderResult.getText(), decoderResult.getRawBytes(), decoderResult.getNumBits(), resultPointArr3, BarcodeFormat.AZTEC, System.currentTimeMillis());
            byteSegments = decoderResult.getByteSegments();
            if (byteSegments != null) {
            }
            eCLevel = decoderResult.getECLevel();
            if (eCLevel != null) {
            }
            result22.putMetadata(ResultMetadataType.ERRORS_CORRECTED, Integer.valueOf(decoderResult.getErrorsCorrected().intValue() + i322));
            result22.putMetadata(ResultMetadataType.SYMBOLOGY_IDENTIFIER, new ObfuscatedString(new long[]{-3580106578732960167L, -1957668512034596965L}).toString() + decoderResult.getSymbologyModifier());
            return result22;
        } catch (NotFoundException e6) {
            e = e6;
            i2 = i;
            resultPointArr2 = resultPointArr;
            formatException = null;
            if (decoderResult == null) {
            }
            resultPointArr3 = resultPointArr2;
            int i3222 = i2;
            if (map != null) {
            }
            Result result222 = new Result(decoderResult.getText(), decoderResult.getRawBytes(), decoderResult.getNumBits(), resultPointArr3, BarcodeFormat.AZTEC, System.currentTimeMillis());
            byteSegments = decoderResult.getByteSegments();
            if (byteSegments != null) {
            }
            eCLevel = decoderResult.getECLevel();
            if (eCLevel != null) {
            }
            result222.putMetadata(ResultMetadataType.ERRORS_CORRECTED, Integer.valueOf(decoderResult.getErrorsCorrected().intValue() + i3222));
            result222.putMetadata(ResultMetadataType.SYMBOLOGY_IDENTIFIER, new ObfuscatedString(new long[]{-3580106578732960167L, -1957668512034596965L}).toString() + decoderResult.getSymbologyModifier());
            return result222;
        }
        if (decoderResult == null) {
            try {
                AztecDetectorResult detect2 = detector.detect(true);
                resultPointArr2 = detect2.getPoints();
                i2 = detect2.getErrorsCorrected();
                decoderResult = new Decoder().decode(detect2);
            } catch (FormatException | NotFoundException e7) {
                if (e != null) {
                    throw e;
                }
                if (formatException != null) {
                    throw formatException;
                }
                throw e7;
            }
        }
        resultPointArr3 = resultPointArr2;
        int i32222 = i2;
        if (map != null && (resultPointCallback = (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK)) != null) {
            for (ResultPoint resultPoint : resultPointArr3) {
                resultPointCallback.foundPossibleResultPoint(resultPoint);
            }
        }
        Result result2222 = new Result(decoderResult.getText(), decoderResult.getRawBytes(), decoderResult.getNumBits(), resultPointArr3, BarcodeFormat.AZTEC, System.currentTimeMillis());
        byteSegments = decoderResult.getByteSegments();
        if (byteSegments != null) {
            result2222.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        eCLevel = decoderResult.getECLevel();
        if (eCLevel != null) {
            result2222.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        result2222.putMetadata(ResultMetadataType.ERRORS_CORRECTED, Integer.valueOf(decoderResult.getErrorsCorrected().intValue() + i32222));
        result2222.putMetadata(ResultMetadataType.SYMBOLOGY_IDENTIFIER, new ObfuscatedString(new long[]{-3580106578732960167L, -1957668512034596965L}).toString() + decoderResult.getSymbologyModifier());
        return result2222;
    }
}
