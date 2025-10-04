package net.i2p.crypto.eddsa.spec;

import java.util.HashMap;
import java.util.Locale;
import net.i2p.crypto.eddsa.Utils;
import net.i2p.crypto.eddsa.math.Curve;
import net.i2p.crypto.eddsa.math.Field;
import net.i2p.crypto.eddsa.math.ed25519.Ed25519LittleEndianEncoding;
import net.i2p.crypto.eddsa.math.ed25519.Ed25519ScalarOps;

/* loaded from: classes3.dex */
public class EdDSANamedCurveTable {
    public static final String ED_25519 = "Ed25519";
    public static final EdDSANamedCurveSpec ED_25519_CURVE_SPEC;
    private static volatile HashMap<String, EdDSANamedCurveSpec> curves;
    private static final Curve ed25519curve;
    private static final Field ed25519field;

    static {
        Field field = new Field(256, Utils.hexToBytes("edffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f"), new Ed25519LittleEndianEncoding());
        ed25519field = field;
        Curve curve = new Curve(field, Utils.hexToBytes("a3785913ca4deb75abd841414d0a700098e879777940c78c73fe6f2bee6c0352"), field.fromByteArray(Utils.hexToBytes("b0a00e4a271beec478e42fad0618432fa7d7fb3d99004d2b0bdfc14f8024832b")));
        ed25519curve = curve;
        EdDSANamedCurveSpec edDSANamedCurveSpec = new EdDSANamedCurveSpec(ED_25519, curve, "SHA-512", new Ed25519ScalarOps(), curve.createPoint(Utils.hexToBytes("5866666666666666666666666666666666666666666666666666666666666666"), true));
        ED_25519_CURVE_SPEC = edDSANamedCurveSpec;
        curves = new HashMap<>();
        defineCurve(edDSANamedCurveSpec);
    }

    public static void defineCurve(EdDSANamedCurveSpec edDSANamedCurveSpec) {
        putCurve(edDSANamedCurveSpec.getName().toLowerCase(Locale.ENGLISH), edDSANamedCurveSpec);
    }

    public static void defineCurveAlias(String str, String str2) {
        HashMap<String, EdDSANamedCurveSpec> hashMap = curves;
        Locale locale = Locale.ENGLISH;
        EdDSANamedCurveSpec edDSANamedCurveSpec = hashMap.get(str.toLowerCase(locale));
        if (edDSANamedCurveSpec != null) {
            putCurve(str2.toLowerCase(locale), edDSANamedCurveSpec);
            return;
        }
        throw new IllegalStateException();
    }

    public static EdDSANamedCurveSpec getByName(String str) {
        return curves.get(str.toLowerCase(Locale.ENGLISH));
    }

    private static synchronized void putCurve(String str, EdDSANamedCurveSpec edDSANamedCurveSpec) {
        synchronized (EdDSANamedCurveTable.class) {
            HashMap<String, EdDSANamedCurveSpec> hashMap = new HashMap<>(curves);
            hashMap.put(str, edDSANamedCurveSpec);
            curves = hashMap;
        }
    }
}
