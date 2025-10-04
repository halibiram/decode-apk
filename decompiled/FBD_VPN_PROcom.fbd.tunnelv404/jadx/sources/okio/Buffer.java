package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Ascii;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002Ë\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\f\u0010\bJ\u000f\u0010\r\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\r\u0010\bJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ+\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\t2\b\b\u0002\u0010\u001e\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u001f\u0010 J'\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u001f\u0010!J\u001f\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u0011¢\u0006\u0004\b\u001f\u0010\"J!\u0010#\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b#\u0010$J\u0015\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u001a¢\u0006\u0004\b&\u0010'J\u001d\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b&\u0010(J\r\u0010)\u001a\u00020\u0011¢\u0006\u0004\b)\u0010*J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u0018\u00101\u001a\u00020+2\u0006\u0010.\u001a\u00020\u0011H\u0087\u0002¢\u0006\u0004\b/\u00100J\u000f\u00103\u001a\u000202H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00106\u001a\u000205H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0011H\u0016¢\u0006\u0004\b8\u0010*J\u000f\u00109\u001a\u000202H\u0016¢\u0006\u0004\b9\u00104J\u000f\u0010:\u001a\u000205H\u0016¢\u0006\u0004\b:\u00107J\u000f\u0010;\u001a\u00020\u0011H\u0016¢\u0006\u0004\b;\u0010*J\u000f\u0010<\u001a\u00020\u0011H\u0016¢\u0006\u0004\b<\u0010*J\u000f\u0010=\u001a\u00020\u0011H\u0016¢\u0006\u0004\b=\u0010*J\u000f\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b?\u0010@J\u0017\u0010?\u001a\u00020>2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b?\u0010AJ\u0017\u0010D\u001a\u0002052\u0006\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bD\u0010EJ)\u0010D\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010G*\u00020F2\f\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000HH\u0016¢\u0006\u0004\bD\u0010IJ\u001f\u0010K\u001a\u00020\u00132\u0006\u0010J\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\bK\u0010LJ\u0017\u0010N\u001a\u00020\u00112\u0006\u0010J\u001a\u00020MH\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010Q\u001a\u00020PH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010Q\u001a\u00020P2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\bQ\u0010SJ\u0017\u0010V\u001a\u00020P2\u0006\u0010U\u001a\u00020TH\u0016¢\u0006\u0004\bV\u0010WJ\u001f\u0010V\u001a\u00020P2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010U\u001a\u00020TH\u0016¢\u0006\u0004\bV\u0010XJ\u0011\u0010Y\u001a\u0004\u0018\u00010PH\u0016¢\u0006\u0004\bY\u0010RJ\u000f\u0010Z\u001a\u00020PH\u0016¢\u0006\u0004\bZ\u0010RJ\u0017\u0010Z\u001a\u00020P2\u0006\u0010[\u001a\u00020\u0011H\u0016¢\u0006\u0004\bZ\u0010SJ\u000f\u0010\\\u001a\u000205H\u0016¢\u0006\u0004\b\\\u00107J\u000f\u0010^\u001a\u00020]H\u0016¢\u0006\u0004\b^\u0010_J\u0017\u0010^\u001a\u00020]2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b^\u0010`J\u0017\u0010a\u001a\u0002052\u0006\u0010J\u001a\u00020]H\u0016¢\u0006\u0004\ba\u0010bJ\u0017\u0010K\u001a\u00020\u00132\u0006\u0010J\u001a\u00020]H\u0016¢\u0006\u0004\bK\u0010cJ'\u0010a\u001a\u0002052\u0006\u0010J\u001a\u00020]2\u0006\u0010\u001e\u001a\u0002052\u0006\u0010\u0012\u001a\u000205H\u0016¢\u0006\u0004\ba\u0010dJ\u0017\u0010a\u001a\u0002052\u0006\u0010J\u001a\u00020eH\u0016¢\u0006\u0004\ba\u0010fJ\r\u0010g\u001a\u00020\u0013¢\u0006\u0004\bg\u0010\u0006J\u0017\u0010h\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\bh\u0010\u0015J\u0017\u0010j\u001a\u00020\u00002\u0006\u0010i\u001a\u00020>H\u0016¢\u0006\u0004\bj\u0010kJ'\u0010j\u001a\u00020\u00002\u0006\u0010i\u001a\u00020>2\u0006\u0010\u001e\u001a\u0002052\u0006\u0010\u0012\u001a\u000205H\u0016¢\u0006\u0004\bj\u0010lJ\u0017\u0010n\u001a\u00020\u00002\u0006\u0010m\u001a\u00020PH\u0016¢\u0006\u0004\bn\u0010oJ'\u0010n\u001a\u00020\u00002\u0006\u0010m\u001a\u00020P2\u0006\u0010p\u001a\u0002052\u0006\u0010q\u001a\u000205H\u0016¢\u0006\u0004\bn\u0010rJ\u0017\u0010t\u001a\u00020\u00002\u0006\u0010s\u001a\u000205H\u0016¢\u0006\u0004\bt\u0010uJ\u001f\u0010v\u001a\u00020\u00002\u0006\u0010m\u001a\u00020P2\u0006\u0010U\u001a\u00020TH\u0016¢\u0006\u0004\bv\u0010wJ/\u0010v\u001a\u00020\u00002\u0006\u0010m\u001a\u00020P2\u0006\u0010p\u001a\u0002052\u0006\u0010q\u001a\u0002052\u0006\u0010U\u001a\u00020TH\u0016¢\u0006\u0004\bv\u0010xJ\u0017\u0010j\u001a\u00020\u00002\u0006\u0010y\u001a\u00020]H\u0016¢\u0006\u0004\bj\u0010zJ'\u0010j\u001a\u00020\u00002\u0006\u0010y\u001a\u00020]2\u0006\u0010\u001e\u001a\u0002052\u0006\u0010\u0012\u001a\u000205H\u0016¢\u0006\u0004\bj\u0010{J\u0017\u0010j\u001a\u0002052\u0006\u0010y\u001a\u00020eH\u0016¢\u0006\u0004\bj\u0010fJ\u0017\u0010}\u001a\u00020\u00112\u0006\u0010y\u001a\u00020|H\u0016¢\u0006\u0004\b}\u0010~J\u001f\u0010j\u001a\u00020\u00002\u0006\u0010y\u001a\u00020|2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\bj\u0010\u007fJ\u001a\u0010\u0081\u0001\u001a\u00020\u00002\u0007\u0010\u0080\u0001\u001a\u000205H\u0016¢\u0006\u0005\b\u0081\u0001\u0010uJ\u001a\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0082\u0001\u001a\u000205H\u0016¢\u0006\u0005\b\u0083\u0001\u0010uJ\u001a\u0010\u0084\u0001\u001a\u00020\u00002\u0007\u0010\u0082\u0001\u001a\u000205H\u0016¢\u0006\u0005\b\u0084\u0001\u0010uJ\u001a\u0010\u0086\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u000205H\u0016¢\u0006\u0005\b\u0086\u0001\u0010uJ\u001a\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u000205H\u0016¢\u0006\u0005\b\u0087\u0001\u0010uJ\u001b\u0010\u0089\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J\u001b\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u008b\u0001\u0010\u008a\u0001J\u001b\u0010\u008c\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u008c\u0001\u0010\u008a\u0001J\u001b\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u008d\u0001\u0010\u008a\u0001J\u001c\u0010\u0092\u0001\u001a\u00030\u008f\u00012\u0007\u0010\u008e\u0001\u001a\u000205H\u0000¢\u0006\u0006\b\u0090\u0001\u0010\u0091\u0001J\u001f\u0010j\u001a\u00020\u00132\u0006\u0010y\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\bj\u0010LJ \u0010a\u001a\u00020\u00112\u0006\u0010J\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0005\ba\u0010\u0093\u0001J\u001b\u0010\u0094\u0001\u001a\u00020\u00112\u0007\u0010\u0080\u0001\u001a\u00020+H\u0016¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001J$\u0010\u0094\u0001\u001a\u00020\u00112\u0007\u0010\u0080\u0001\u001a\u00020+2\u0007\u0010\u0096\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u0094\u0001\u0010\u0097\u0001J-\u0010\u0094\u0001\u001a\u00020\u00112\u0007\u0010\u0080\u0001\u001a\u00020+2\u0007\u0010\u0096\u0001\u001a\u00020\u00112\u0007\u0010\u0098\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u0094\u0001\u0010\u0099\u0001J\u001b\u0010\u0094\u0001\u001a\u00020\u00112\u0007\u0010\u009a\u0001\u001a\u00020>H\u0016¢\u0006\u0006\b\u0094\u0001\u0010\u009b\u0001J$\u0010\u0094\u0001\u001a\u00020\u00112\u0007\u0010\u009a\u0001\u001a\u00020>2\u0007\u0010\u0096\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u0094\u0001\u0010\u009c\u0001J\u001b\u0010\u009e\u0001\u001a\u00020\u00112\u0007\u0010\u009d\u0001\u001a\u00020>H\u0016¢\u0006\u0006\b\u009e\u0001\u0010\u009b\u0001J$\u0010\u009e\u0001\u001a\u00020\u00112\u0007\u0010\u009d\u0001\u001a\u00020>2\u0007\u0010\u0096\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u009e\u0001\u0010\u009c\u0001J#\u0010\u009f\u0001\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00112\u0007\u0010\u009a\u0001\u001a\u00020>H\u0016¢\u0006\u0006\b\u009f\u0001\u0010 \u0001J4\u0010\u009f\u0001\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00112\u0007\u0010\u009a\u0001\u001a\u00020>2\u0007\u0010¡\u0001\u001a\u0002052\u0006\u0010\u0012\u001a\u000205H\u0016¢\u0006\u0006\b\u009f\u0001\u0010¢\u0001J\u0011\u0010£\u0001\u001a\u00020\u0013H\u0016¢\u0006\u0005\b£\u0001\u0010\u0006J\u0011\u0010¤\u0001\u001a\u00020\u000eH\u0016¢\u0006\u0005\b¤\u0001\u0010\u0010J\u0011\u0010¥\u0001\u001a\u00020\u0013H\u0016¢\u0006\u0005\b¥\u0001\u0010\u0006J\u0013\u0010§\u0001\u001a\u00030¦\u0001H\u0016¢\u0006\u0006\b§\u0001\u0010¨\u0001J\u000f\u0010©\u0001\u001a\u00020>¢\u0006\u0005\b©\u0001\u0010@J\u000f\u0010ª\u0001\u001a\u00020>¢\u0006\u0005\bª\u0001\u0010@J\u000f\u0010«\u0001\u001a\u00020>¢\u0006\u0005\b«\u0001\u0010@J\u000f\u0010¬\u0001\u001a\u00020>¢\u0006\u0005\b¬\u0001\u0010@J\u0019\u0010®\u0001\u001a\u00020>2\u0007\u0010\u00ad\u0001\u001a\u00020>¢\u0006\u0006\b®\u0001\u0010¯\u0001J\u0019\u0010°\u0001\u001a\u00020>2\u0007\u0010\u00ad\u0001\u001a\u00020>¢\u0006\u0006\b°\u0001\u0010¯\u0001J\u0019\u0010±\u0001\u001a\u00020>2\u0007\u0010\u00ad\u0001\u001a\u00020>¢\u0006\u0006\b±\u0001\u0010¯\u0001J\u001e\u0010³\u0001\u001a\u00020\u000e2\t\u0010²\u0001\u001a\u0004\u0018\u00010FH\u0096\u0002¢\u0006\u0006\b³\u0001\u0010´\u0001J\u0011\u0010µ\u0001\u001a\u000205H\u0016¢\u0006\u0005\bµ\u0001\u00107J\u0011\u0010¶\u0001\u001a\u00020PH\u0016¢\u0006\u0005\b¶\u0001\u0010RJ\u000f\u0010·\u0001\u001a\u00020\u0000¢\u0006\u0005\b·\u0001\u0010\bJ\u0011\u0010¸\u0001\u001a\u00020\u0000H\u0016¢\u0006\u0005\b¸\u0001\u0010\bJ\u000f\u0010¹\u0001\u001a\u00020>¢\u0006\u0005\b¹\u0001\u0010@J\u0018\u0010¹\u0001\u001a\u00020>2\u0006\u0010\u0012\u001a\u000205¢\u0006\u0006\b¹\u0001\u0010º\u0001J\u001f\u0010½\u0001\u001a\u00030»\u00012\n\b\u0002\u0010¼\u0001\u001a\u00030»\u0001H\u0007¢\u0006\u0006\b½\u0001\u0010¾\u0001J\u001f\u0010¿\u0001\u001a\u00030»\u00012\n\b\u0002\u0010¼\u0001\u001a\u00030»\u0001H\u0007¢\u0006\u0006\b¿\u0001\u0010¾\u0001J\u0019\u0010/\u001a\u00020+2\u0007\u0010À\u0001\u001a\u00020\u0011H\u0007¢\u0006\u0005\bÁ\u0001\u00100J\u0011\u0010Ã\u0001\u001a\u00020\u0011H\u0007¢\u0006\u0005\bÂ\u0001\u0010*R\u001c\u0010Ä\u0001\u001a\u0005\u0018\u00010\u008f\u00018\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010Å\u0001R0\u0010Ã\u0001\u001a\u00020\u00112\u0007\u0010Æ\u0001\u001a\u00020\u00118G@@X\u0086\u000e¢\u0006\u0016\n\u0006\bÇ\u0001\u0010È\u0001\u001a\u0005\bÃ\u0001\u0010*\"\u0005\bÉ\u0001\u0010\u0015R\u0015\u0010\u0007\u001a\u00020\u00008VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bÊ\u0001\u0010\b¨\u0006Ì\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "<init>", "()V", "buffer", "()Lokio/Buffer;", "Ljava/io/OutputStream;", "outputStream", "()Ljava/io/OutputStream;", "emitCompleteSegments", "emit", "", "exhausted", "()Z", "", "byteCount", "", "require", "(J)V", "request", "(J)Z", "peek", "()Lokio/BufferedSource;", "Ljava/io/InputStream;", "inputStream", "()Ljava/io/InputStream;", "out", TypedValues.CycleType.S_WAVE_OFFSET, "copyTo", "(Ljava/io/OutputStream;JJ)Lokio/Buffer;", "(Lokio/Buffer;JJ)Lokio/Buffer;", "(Lokio/Buffer;J)Lokio/Buffer;", "writeTo", "(Ljava/io/OutputStream;J)Lokio/Buffer;", "input", "readFrom", "(Ljava/io/InputStream;)Lokio/Buffer;", "(Ljava/io/InputStream;J)Lokio/Buffer;", "completeSegmentByteCount", "()J", "", "readByte", "()B", "pos", "getByte", "(J)B", "get", "", "readShort", "()S", "", "readInt", "()I", "readLong", "readShortLe", "readIntLe", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "Lokio/ByteString;", "readByteString", "()Lokio/ByteString;", "(J)Lokio/ByteString;", "Lokio/Options;", "options", "select", "(Lokio/Options;)I", "", ExifInterface.GPS_DIRECTION_TRUE, "Lokio/TypedOptions;", "(Lokio/TypedOptions;)Ljava/lang/Object;", "sink", "readFully", "(Lokio/Buffer;J)V", "Lokio/Sink;", "readAll", "(Lokio/Sink;)J", "", "readUtf8", "()Ljava/lang/String;", "(J)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "readString", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "(JLjava/nio/charset/Charset;)Ljava/lang/String;", "readUtf8Line", "readUtf8LineStrict", "limit", "readUtf8CodePoint", "", "readByteArray", "()[B", "(J)[B", "read", "([B)I", "([B)V", "([BII)I", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)I", "clear", "skip", "byteString", "write", "(Lokio/ByteString;)Lokio/Buffer;", "(Lokio/ByteString;II)Lokio/Buffer;", TypedValues.Custom.S_STRING, "writeUtf8", "(Ljava/lang/String;)Lokio/Buffer;", "beginIndex", "endIndex", "(Ljava/lang/String;II)Lokio/Buffer;", "codePoint", "writeUtf8CodePoint", "(I)Lokio/Buffer;", "writeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;", "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;", "source", "([B)Lokio/Buffer;", "([BII)Lokio/Buffer;", "Lokio/Source;", "writeAll", "(Lokio/Source;)J", "(Lokio/Source;J)Lokio/Buffer;", "b", "writeByte", "s", "writeShort", "writeShortLe", "i", "writeInt", "writeIntLe", "v", "writeLong", "(J)Lokio/Buffer;", "writeLongLe", "writeDecimalLong", "writeHexadecimalUnsignedLong", "minimumCapacity", "Lokio/Segment;", "writableSegment$okio", "(I)Lokio/Segment;", "writableSegment", "(Lokio/Buffer;J)J", "indexOf", "(B)J", "fromIndex", "(BJ)J", "toIndex", "(BJJ)J", "bytes", "(Lokio/ByteString;)J", "(Lokio/ByteString;J)J", "targetBytes", "indexOfElement", "rangeEquals", "(JLokio/ByteString;)Z", "bytesOffset", "(JLokio/ByteString;II)Z", "flush", "isOpen", "close", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "md5", "sha1", "sha256", "sha512", "key", "hmacSha1", "(Lokio/ByteString;)Lokio/ByteString;", "hmacSha256", "hmacSha512", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "copy", "clone", "snapshot", "(I)Lokio/ByteString;", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readUnsafe", "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "readAndWriteUnsafe", "index", "-deprecated_getByte", "-deprecated_size", "size", "head", "Lokio/Segment;", "value", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "J", "setSize$okio", "getBuffer", "UnsafeCursor", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 Buffer.kt\nokio/internal/-Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 BufferedSource.kt\nokio/internal/-BufferedSource\n*L\n1#1,644:1\n88#2:645\n85#2:678\n85#2:680\n73#2:740\n73#2:766\n82#2:805\n76#2:816\n88#2:1009\n73#2:1024\n85#2:1128\n88#2:1565\n242#3,32:646\n277#3,10:681\n290#3,18:691\n412#3,2:709\n110#3:711\n414#3:712\n112#3,18:713\n311#3,9:731\n320#3,15:741\n338#3,10:756\n348#3,3:767\n346#3,25:770\n374#3,10:795\n384#3:806\n382#3,9:807\n391#3,7:817\n389#3,20:824\n652#3,60:844\n715#3,56:904\n773#3:960\n776#3:961\n777#3,6:963\n787#3,7:969\n797#3,6:979\n805#3,5:985\n837#3,6:990\n847#3:996\n848#3,11:998\n859#3,5:1010\n868#3,9:1015\n878#3,61:1025\n603#3:1086\n606#3:1087\n607#3,5:1089\n614#3:1094\n617#3,7:1095\n626#3,20:1102\n418#3:1122\n421#3,5:1123\n426#3,10:1129\n437#3,7:1139\n442#3,2:1146\n943#3:1148\n944#3,87:1150\n1034#3,48:1237\n573#3:1285\n580#3,21:1286\n1085#3,7:1307\n1095#3,7:1314\n1105#3,4:1321\n1112#3,8:1325\n1123#3,10:1333\n1136#3,14:1343\n447#3,35:1357\n513#3,40:1392\n556#3:1432\n558#3,13:1434\n1153#3:1447\n1204#3:1448\n1205#3,39:1450\n1246#3,2:1489\n1248#3,4:1492\n1255#3,3:1496\n1259#3,4:1500\n110#3:1504\n1263#3,22:1505\n112#3,18:1527\n1289#3,2:1545\n1291#3,3:1548\n110#3:1551\n1294#3,13:1552\n1307#3,13:1566\n112#3,18:1579\n1324#3,2:1597\n1327#3:1600\n110#3:1601\n1328#3,50:1602\n112#3,18:1652\n1387#3,14:1670\n1404#3,32:1684\n1439#3,12:1716\n1454#3,18:1728\n1476#3:1746\n1477#3:1748\n1482#3,34:1749\n1#4:679\n1#4:962\n1#4:997\n1#4:1088\n1#4:1149\n1#4:1433\n1#4:1449\n1#4:1491\n1#4:1499\n1#4:1547\n1#4:1599\n1#4:1747\n26#5,3:976\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n167#1:645\n197#1:678\n235#1:680\n261#1:740\n264#1:766\n267#1:805\n267#1:816\n337#1:1009\n340#1:1024\n376#1:1128\n486#1:1565\n181#1:646,32\n252#1:681,10\n255#1:691,18\n258#1:709,2\n258#1:711\n258#1:712\n258#1:713,18\n261#1:731,9\n261#1:741,15\n264#1:756,10\n264#1:767,3\n264#1:770,25\n267#1:795,10\n267#1:806\n267#1:807,9\n267#1:817,7\n267#1:824,20\n279#1:844,60\n282#1:904,56\n284#1:960\n287#1:961\n287#1:963,6\n289#1:969,7\n294#1:979,6\n297#1:985,5\n331#1:990,6\n337#1:996\n337#1:998,11\n337#1:1010,5\n340#1:1015,9\n340#1:1025,61\n342#1:1086\n345#1:1087\n345#1:1089,5\n347#1:1094\n350#1:1095,7\n353#1:1102,20\n373#1:1122\n376#1:1123,5\n376#1:1129,10\n378#1:1139,7\n381#1:1146,2\n386#1:1148\n386#1:1150,87\n389#1:1237,48\n412#1:1285\n418#1:1286,21\n439#1:1307,7\n443#1:1314,7\n445#1:1321,4\n447#1:1325,8\n451#1:1333,10\n455#1:1343,14\n459#1:1357,35\n462#1:1392,40\n465#1:1432\n465#1:1434,13\n467#1:1447\n467#1:1448\n467#1:1450,39\n469#1:1489,2\n469#1:1492,4\n480#1:1496,3\n480#1:1500,4\n480#1:1504\n480#1:1505,22\n480#1:1527,18\n486#1:1545,2\n486#1:1548,3\n486#1:1551\n486#1:1552,13\n486#1:1566,13\n486#1:1579,18\n491#1:1597,2\n491#1:1600\n491#1:1601\n491#1:1602,50\n491#1:1652,18\n501#1:1670,14\n571#1:1684,32\n573#1:1716,12\n581#1:1728,18\n589#1:1746\n589#1:1748\n591#1:1749,34\n287#1:962\n337#1:997\n345#1:1088\n386#1:1149\n465#1:1433\n467#1:1449\n469#1:1491\n480#1:1499\n486#1:1547\n491#1:1599\n589#1:1747\n291#1:976,3\n*E\n"})
/* loaded from: classes3.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {

    @JvmField
    @Nullable
    public Segment head;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public long size;

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0012\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0003R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\b\u0010!R\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010%\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010'\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010&¨\u0006("}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "<init>", "()V", "", "next", "()I", "", TypedValues.CycleType.S_WAVE_OFFSET, "seek", "(J)I", "newSize", "resizeBuffer", "(J)J", "minByteCount", "expandBuffer", "(I)J", "", "close", "Lokio/Buffer;", "buffer", "Lokio/Buffer;", "", "readWrite", "Z", "Lokio/Segment;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokio/Segment;", "getSegment$okio", "()Lokio/Segment;", "setSegment$okio", "(Lokio/Segment;)V", "segment", "J", "", "data", "[B", "start", "I", "end", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 Buffer.kt\nokio/internal/-Buffer\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,644:1\n1537#2:645\n1538#2:647\n1542#2:648\n1543#2,68:650\n1614#2:718\n1615#2,32:720\n1647#2,18:753\n1668#2:771\n1669#2,18:773\n1691#2:791\n1693#2,7:793\n1#3:646\n1#3:649\n1#3:719\n1#3:772\n1#3:792\n85#4:752\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n631#1:645\n631#1:647\n633#1:648\n633#1:650,68\n635#1:718\n635#1:720,32\n635#1:753,18\n637#1:771\n637#1:773,18\n640#1:791\n640#1:793,7\n631#1:646\n633#1:649\n635#1:719\n637#1:772\n640#1:792\n635#1:752\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class UnsafeCursor implements Closeable {

        @JvmField
        @Nullable
        public Buffer buffer;

        @JvmField
        @Nullable
        public byte[] data;

        @JvmField
        public boolean readWrite;

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public Segment segment;

        @JvmField
        public long offset = -1;

        @JvmField
        public int start = -1;

        @JvmField
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer != null) {
                this.buffer = null;
                setSegment$okio(null);
                this.offset = -1L;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public final long expandBuffer(int minByteCount) {
            if (minByteCount > 0) {
                if (minByteCount <= 8192) {
                    Buffer buffer = this.buffer;
                    if (buffer != null) {
                        if (this.readWrite) {
                            long size = buffer.size();
                            Segment writableSegment$okio = buffer.writableSegment$okio(minByteCount);
                            int i = 8192 - writableSegment$okio.limit;
                            writableSegment$okio.limit = 8192;
                            long j = i;
                            buffer.setSize$okio(size + j);
                            setSegment$okio(writableSegment$okio);
                            this.offset = size;
                            this.data = writableSegment$okio.data;
                            this.start = 8192 - i;
                            this.end = 8192;
                            return j;
                        }
                        throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
                    }
                    throw new IllegalStateException("not attached to a buffer");
                }
                throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(minByteCount, "minByteCount > Segment.SIZE: ").toString());
            }
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(minByteCount, "minByteCount <= 0: ").toString());
        }

        @Nullable
        /* renamed from: getSegment$okio, reason: from getter */
        public final Segment getSegment() {
            return this.segment;
        }

        public final int next() {
            long j;
            long j2 = this.offset;
            Buffer buffer = this.buffer;
            Intrinsics.checkNotNull(buffer);
            if (j2 != buffer.size()) {
                long j3 = this.offset;
                if (j3 == -1) {
                    j = 0;
                } else {
                    j = j3 + (this.end - this.start);
                }
                return seek(j);
            }
            throw new IllegalStateException("no more bytes");
        }

        public final long resizeBuffer(long newSize) {
            Buffer buffer = this.buffer;
            if (buffer != null) {
                if (this.readWrite) {
                    long size = buffer.size();
                    if (newSize <= size) {
                        if (newSize >= 0) {
                            long j = size - newSize;
                            while (true) {
                                if (j <= 0) {
                                    break;
                                }
                                Segment segment = buffer.head;
                                Intrinsics.checkNotNull(segment);
                                Segment segment2 = segment.prev;
                                Intrinsics.checkNotNull(segment2);
                                int i = segment2.limit;
                                long j2 = i - segment2.pos;
                                if (j2 <= j) {
                                    buffer.head = segment2.pop();
                                    SegmentPool.recycle(segment2);
                                    j -= j2;
                                } else {
                                    segment2.limit = i - ((int) j);
                                    break;
                                }
                            }
                            setSegment$okio(null);
                            this.offset = newSize;
                            this.data = null;
                            this.start = -1;
                            this.end = -1;
                        } else {
                            throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("newSize < 0: ", newSize).toString());
                        }
                    } else if (newSize > size) {
                        long j3 = newSize - size;
                        boolean z = true;
                        for (long j4 = 0; j3 > j4; j4 = 0) {
                            Segment writableSegment$okio = buffer.writableSegment$okio(1);
                            int min = (int) Math.min(j3, 8192 - writableSegment$okio.limit);
                            writableSegment$okio.limit += min;
                            j3 -= min;
                            if (z) {
                                setSegment$okio(writableSegment$okio);
                                this.offset = size;
                                this.data = writableSegment$okio.data;
                                int i2 = writableSegment$okio.limit;
                                this.start = i2 - min;
                                this.end = i2;
                                z = false;
                            }
                        }
                    }
                    buffer.setSize$okio(newSize);
                    return size;
                }
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public final int seek(long offset) {
            Segment segment;
            Buffer buffer = this.buffer;
            if (buffer != null) {
                if (offset >= -1 && offset <= buffer.size()) {
                    if (offset != -1 && offset != buffer.size()) {
                        long size = buffer.size();
                        Segment segment2 = buffer.head;
                        long j = 0;
                        if (getSegment() != null) {
                            long j2 = this.offset;
                            int i = this.start;
                            Intrinsics.checkNotNull(getSegment());
                            long j3 = j2 - (i - r9.pos);
                            if (j3 > offset) {
                                segment = segment2;
                                segment2 = getSegment();
                                size = j3;
                            } else {
                                segment = getSegment();
                                j = j3;
                            }
                        } else {
                            segment = segment2;
                        }
                        if (size - offset > offset - j) {
                            while (true) {
                                Intrinsics.checkNotNull(segment);
                                int i2 = segment.limit;
                                int i3 = segment.pos;
                                if (offset < (i2 - i3) + j) {
                                    break;
                                }
                                j += i2 - i3;
                                segment = segment.next;
                            }
                        } else {
                            while (size > offset) {
                                Intrinsics.checkNotNull(segment2);
                                segment2 = segment2.prev;
                                Intrinsics.checkNotNull(segment2);
                                size -= segment2.limit - segment2.pos;
                            }
                            j = size;
                            segment = segment2;
                        }
                        if (this.readWrite) {
                            Intrinsics.checkNotNull(segment);
                            if (segment.shared) {
                                Segment unsharedCopy = segment.unsharedCopy();
                                if (buffer.head == segment) {
                                    buffer.head = unsharedCopy;
                                }
                                segment = segment.push(unsharedCopy);
                                Segment segment3 = segment.prev;
                                Intrinsics.checkNotNull(segment3);
                                segment3.pop();
                            }
                        }
                        setSegment$okio(segment);
                        this.offset = offset;
                        Intrinsics.checkNotNull(segment);
                        this.data = segment.data;
                        int i4 = segment.pos + ((int) (offset - j));
                        this.start = i4;
                        int i5 = segment.limit;
                        this.end = i5;
                        return i5 - i4;
                    }
                    setSegment$okio(null);
                    this.offset = offset;
                    this.data = null;
                    this.start = -1;
                    this.end = -1;
                    return -1;
                }
                throw new ArrayIndexOutOfBoundsException("offset=" + offset + " > size=" + buffer.size());
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public final void setSegment$okio(@Nullable Segment segment) {
            this.segment = segment;
        }
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j3 = j;
        if ((i & 4) != 0) {
            j2 = buffer.size - j3;
        }
        return buffer.copyTo(outputStream, j3, j2);
    }

    public static /* synthetic */ UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    public static /* synthetic */ UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = buffer.size;
        }
        return buffer.writeTo(outputStream, j);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to operator function", replaceWith = @ReplaceWith(expression = "this[index]", imports = {}))
    @JvmName(name = "-deprecated_getByte")
    /* renamed from: -deprecated_getByte, reason: not valid java name */
    public final byte m2635deprecated_getByte(long index) {
        return getByte(index);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "size", imports = {}))
    @JvmName(name = "-deprecated_size")
    /* renamed from: -deprecated_size, reason: not valid java name and from getter */
    public final long getSize() {
        return this.size;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    /* renamed from: buffer */
    public Buffer getBufferField() {
        return this;
    }

    public final void clear() {
        skip(size());
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = segment.prev;
        Intrinsics.checkNotNull(segment2);
        if (segment2.limit < 8192 && segment2.owner) {
            size -= r3 - segment2.pos;
        }
        return size;
    }

    @NotNull
    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() != 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            Segment sharedCopy = segment.sharedCopy();
            buffer.head = sharedCopy;
            sharedCopy.prev = sharedCopy;
            sharedCopy.next = sharedCopy;
            for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
                Segment segment3 = sharedCopy.prev;
                Intrinsics.checkNotNull(segment3);
                Intrinsics.checkNotNull(segment2);
                segment3.push(segment2.sharedCopy());
            }
            buffer.setSize$okio(size());
        }
        return buffer;
    }

    @JvmOverloads
    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out) {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo$default(this, out, 0L, 0L, 6, (Object) null);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emit() {
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof Buffer) {
            Buffer buffer = (Buffer) other;
            if (size() == buffer.size()) {
                if (size() == 0) {
                    return true;
                }
                Segment segment = this.head;
                Intrinsics.checkNotNull(segment);
                Segment segment2 = buffer.head;
                Intrinsics.checkNotNull(segment2);
                int i = segment.pos;
                int i2 = segment2.pos;
                long j = 0;
                while (j < size()) {
                    long min = Math.min(segment.limit - i, segment2.limit - i2);
                    long j2 = 0;
                    while (j2 < min) {
                        int i3 = i + 1;
                        int i4 = i2 + 1;
                        if (segment.data[i] == segment2.data[i2]) {
                            j2++;
                            i = i3;
                            i2 = i4;
                        }
                    }
                    if (i == segment.limit) {
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        i = segment.pos;
                    }
                    if (i2 == segment2.limit) {
                        segment2 = segment2.next;
                        Intrinsics.checkNotNull(segment2);
                        i2 = segment2.pos;
                    }
                    j += min;
                }
                return true;
            }
        }
        return false;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (this.size == 0) {
            return true;
        }
        return false;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this;
    }

    @JvmName(name = "getByte")
    public final byte getByte(long pos) {
        SegmentedByteString.checkOffsetAndCount(size(), pos, 1L);
        Segment segment = this.head;
        if (segment != null) {
            if (size() - pos < pos) {
                long size = size();
                while (size > pos) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    size -= segment.limit - segment.pos;
                }
                Intrinsics.checkNotNull(segment);
                return segment.data[(int) ((segment.pos + pos) - size)];
            }
            long j = 0;
            while (true) {
                long j2 = (segment.limit - segment.pos) + j;
                if (j2 <= pos) {
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j = j2;
                } else {
                    Intrinsics.checkNotNull(segment);
                    return segment.data[(int) ((segment.pos + pos) - j)];
                }
            }
        } else {
            Intrinsics.checkNotNull(null);
            throw null;
        }
    }

    public int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.limit;
            for (int i3 = segment.pos; i3 < i2; i3++) {
                i = (i * 31) + segment.data[i3];
            }
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
        } while (segment != this.head);
        return i;
    }

    @NotNull
    public final ByteString hmacSha1(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return m2638x3271d0aa("HmacSHA1", key);
    }

    @NotNull
    public final ByteString hmacSha256(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return m2638x3271d0aa("HmacSHA256", key);
    }

    @NotNull
    public final ByteString hmacSha512(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return m2638x3271d0aa("HmacSHA512", key);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes) {
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // okio.BufferedSource
    @NotNull
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                Buffer buffer = Buffer.this;
                if (buffer.size() > 0) {
                    return buffer.readByte() & 255;
                }
                return -1;
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] sink, int offset, int byteCount) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                return Buffer.this.read(sink, offset, byteCount);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @NotNull
    public final ByteString md5() {
        return m2637xfbe0c504("MD5");
    }

    @Override // okio.BufferedSink
    @NotNull
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer$outputStream$1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int b) {
                Buffer.this.writeByte(b);
            }

            @Override // java.io.OutputStream
            public void write(byte[] data, int offset, int byteCount) {
                Intrinsics.checkNotNullParameter(data, "data");
                Buffer.this.write(data, offset, byteCount);
            }
        };
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, @NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return rangeEquals(offset, bytes, 0, bytes.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), segment.limit - segment.pos);
        sink.put(segment.data, segment.pos, min);
        int i = segment.pos + min;
        segment.pos = i;
        this.size -= min;
        if (i == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @Override // okio.BufferedSource
    public long readAll(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        if (size() != 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            int i3 = i + 1;
            byte b = segment.data[i];
            setSize$okio(size() - 1);
            if (i3 == i2) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i3;
            }
            return b;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString() {
        return readByteString(size());
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() {
        int i;
        String str;
        if (size() != 0) {
            int i2 = 0;
            long j = 0;
            long j2 = -7;
            boolean z = false;
            boolean z2 = false;
            do {
                Segment segment = this.head;
                Intrinsics.checkNotNull(segment);
                byte[] bArr = segment.data;
                int i3 = segment.pos;
                int i4 = segment.limit;
                while (i3 < i4) {
                    byte b = bArr[i3];
                    if (b >= 48 && b <= 57) {
                        int i5 = 48 - b;
                        if (j >= okio.internal.Buffer.OVERFLOW_ZONE && (j != okio.internal.Buffer.OVERFLOW_ZONE || i5 >= j2)) {
                            j = (j * 10) + i5;
                        } else {
                            Buffer writeByte = new Buffer().writeDecimalLong(j).writeByte((int) b);
                            if (!z) {
                                writeByte.readByte();
                            }
                            throw new NumberFormatException("Number too large: " + writeByte.readUtf8());
                        }
                    } else if (b == 45 && i2 == 0) {
                        j2--;
                        z = true;
                    } else {
                        z2 = true;
                        break;
                    }
                    i3++;
                    i2++;
                }
                if (i3 == i4) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                } else {
                    segment.pos = i3;
                }
                if (z2) {
                    break;
                }
            } while (this.head != null);
            setSize$okio(size() - i2);
            if (z) {
                i = 2;
            } else {
                i = 1;
            }
            if (i2 < i) {
                if (size() != 0) {
                    if (z) {
                        str = "Expected a digit";
                    } else {
                        str = "Expected a digit or '-'";
                    }
                    StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(str, " but was 0x");
                    m2943xc20437a5.append(SegmentedByteString.toHexString(getByte(0L)));
                    throw new NumberFormatException(m2943xc20437a5.toString());
                }
                throw new EOFException();
            }
            if (!z) {
                return -j;
            }
            return j;
        }
        throw new EOFException();
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input) {
        Intrinsics.checkNotNullParameter(input, "input");
        m2639x1378447b(input, Long.MAX_VALUE, true);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull Buffer sink, long byteCount) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (size() >= byteCount) {
            sink.write(this, byteCount);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1 A[EDGE_INSN: B:40:0x00a1->B:37:0x00a1 BREAK  A[LOOP:0: B:4:0x000d->B:39:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0099  */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long readHexadecimalUnsignedLong() {
        int i;
        if (size() != 0) {
            int i2 = 0;
            long j = 0;
            boolean z = false;
            do {
                Segment segment = this.head;
                Intrinsics.checkNotNull(segment);
                byte[] bArr = segment.data;
                int i3 = segment.pos;
                int i4 = segment.limit;
                while (i3 < i4) {
                    byte b = bArr[i3];
                    if (b >= 48 && b <= 57) {
                        i = b - 48;
                    } else if (b >= 97 && b <= 102) {
                        i = b - 87;
                    } else if (b >= 65 && b <= 70) {
                        i = b - 55;
                    } else if (i2 != 0) {
                        z = true;
                        if (i3 != i4) {
                            this.head = segment.pop();
                            SegmentPool.recycle(segment);
                        } else {
                            segment.pos = i3;
                        }
                        if (!z) {
                            break;
                        }
                    } else {
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + SegmentedByteString.toHexString(b));
                    }
                    if (((-1152921504606846976L) & j) == 0) {
                        j = (j << 4) | i;
                        i3++;
                        i2++;
                    } else {
                        throw new NumberFormatException("Number too large: " + new Buffer().writeHexadecimalUnsignedLong(j).writeByte((int) b).readUtf8());
                    }
                }
                if (i3 != i4) {
                }
                if (!z) {
                }
            } while (this.head != null);
            setSize$okio(size() - i2);
            return j;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int readInt() {
        if (size() >= 4) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            if (i2 - i < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = segment.data;
            int i3 = i + 3;
            int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
            int i5 = i + 4;
            int i6 = (bArr[i3] & 255) | i4;
            setSize$okio(size() - 4);
            if (i5 == i2) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i5;
            }
            return i6;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        return SegmentedByteString.reverseBytes(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() {
        if (size() >= 8) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            if (i2 - i < 8) {
                return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
            }
            byte[] bArr = segment.data;
            int i3 = i + 7;
            long j = ((bArr[i + 3] & 255) << 32) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
            int i4 = i + 8;
            long j2 = j | (bArr[i3] & 255);
            setSize$okio(size() - 8);
            if (i4 == i2) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i4;
            }
            return j2;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        return SegmentedByteString.reverseBytes(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() {
        if (size() >= 2) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            if (i2 - i < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = segment.data;
            int i3 = i + 1;
            int i4 = (bArr[i] & 255) << 8;
            int i5 = i + 2;
            int i6 = (bArr[i3] & 255) | i4;
            setSize$okio(size() - 2);
            if (i5 == i2) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i5;
            }
            return (short) i6;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        return SegmentedByteString.reverseBytes(readShort());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return readString(this.size, charset);
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8() {
        return readString(this.size, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() {
        int i;
        int i2;
        int i3;
        if (size() != 0) {
            byte b = getByte(0L);
            if ((b & 128) == 0) {
                i = b & Byte.MAX_VALUE;
                i2 = 1;
                i3 = 0;
            } else if ((b & 224) == 192) {
                i = b & Ascii.US;
                i2 = 2;
                i3 = 128;
            } else if ((b & 240) == 224) {
                i = b & Ascii.SI;
                i2 = 3;
                i3 = 2048;
            } else if ((b & 248) == 240) {
                i = b & 7;
                i2 = 4;
                i3 = 65536;
            } else {
                skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            long j = i2;
            if (size() >= j) {
                for (int i4 = 1; i4 < i2; i4++) {
                    long j2 = i4;
                    byte b2 = getByte(j2);
                    if ((b2 & 192) == 128) {
                        i = (i << 6) | (b2 & Utf8.REPLACEMENT_BYTE);
                    } else {
                        skip(j2);
                        return Utf8.REPLACEMENT_CODE_POINT;
                    }
                }
                skip(j);
                if (i > 1114111) {
                    return Utf8.REPLACEMENT_CODE_POINT;
                }
                if ((55296 <= i && i < 57344) || i < i3) {
                    return Utf8.REPLACEMENT_CODE_POINT;
                }
                return i;
            }
            StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i2, "size < ", ": ");
            m2939xab142723.append(size());
            m2939xab142723.append(" (to read code point prefixed 0x");
            m2939xab142723.append(SegmentedByteString.toHexString(b));
            m2939xab142723.append(')');
            throw new EOFException(m2939xab142723.toString());
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        if (indexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, indexOf);
        }
        if (size() != 0) {
            return readUtf8(size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long byteCount) {
        if (this.size >= byteCount) {
            return true;
        }
        return false;
    }

    @Override // okio.BufferedSource
    public void require(long byteCount) {
        if (this.size >= byteCount) {
        } else {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(@NotNull Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        int selectPrefix$default = okio.internal.Buffer.selectPrefix$default(this, options, false, 2, null);
        if (selectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings()[selectPrefix$default].size());
        return selectPrefix$default;
    }

    public final void setSize$okio(long j) {
        this.size = j;
    }

    @NotNull
    public final ByteString sha1() {
        return m2637xfbe0c504("SHA-1");
    }

    @NotNull
    public final ByteString sha256() {
        return m2637xfbe0c504("SHA-256");
    }

    @NotNull
    public final ByteString sha512() {
        return m2637xfbe0c504("SHA-512");
    }

    @JvmName(name = "size")
    public final long size() {
        return this.size;
    }

    @Override // okio.BufferedSource
    public void skip(long byteCount) {
        while (byteCount > 0) {
            Segment segment = this.head;
            if (segment != null) {
                int min = (int) Math.min(byteCount, segment.limit - segment.pos);
                long j = min;
                setSize$okio(size() - j);
                byteCount -= j;
                int i = segment.pos + min;
                segment.pos = i;
                if (i == segment.limit) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @NotNull
    public final ByteString snapshot() {
        if (size() <= 2147483647L) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + size()).toString());
    }

    @Override // okio.Source
    @NotNull
    /* renamed from: timeout */
    public Timeout getF3568xfbe0c504() {
        return Timeout.NONE;
    }

    @NotNull
    public String toString() {
        return snapshot().toString();
    }

    @NotNull
    public final Segment writableSegment$okio(int minimumCapacity) {
        if (minimumCapacity >= 1 && minimumCapacity <= 8192) {
            Segment segment = this.head;
            if (segment == null) {
                Segment take = SegmentPool.take();
                this.head = take;
                take.prev = take;
                take.next = take;
                return take;
            }
            Intrinsics.checkNotNull(segment);
            Segment segment2 = segment.prev;
            Intrinsics.checkNotNull(segment2);
            if (segment2.limit + minimumCapacity <= 8192 && segment2.owner) {
                return segment2;
            }
            return segment2.push(SegmentPool.take());
        }
        throw new IllegalArgumentException("unexpected capacity");
    }

    @Override // okio.BufferedSink
    public long writeAll(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j = 0;
        while (true) {
            long read = source.read(this, 8192L);
            if (read != -1) {
                j += read;
            } else {
                return j;
            }
        }
    }

    @JvmOverloads
    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out) {
        Intrinsics.checkNotNullParameter(out, "out");
        return writeTo$default(this, out, 0L, 2, null);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ByteString m2637xfbe0c504(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        Segment segment = this.head;
        if (segment != null) {
            byte[] bArr = segment.data;
            int i = segment.pos;
            messageDigest.update(bArr, i, segment.limit - i);
            Segment segment2 = segment.next;
            Intrinsics.checkNotNull(segment2);
            while (segment2 != segment) {
                byte[] bArr2 = segment2.data;
                int i2 = segment2.pos;
                messageDigest.update(bArr2, i2, segment2.limit - i2);
                segment2 = segment2.next;
                Intrinsics.checkNotNull(segment2);
            }
        }
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
        return new ByteString(digest);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final ByteString m2638x3271d0aa(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.internalArray$okio(), str));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i = segment.pos;
                mac.update(bArr, i, segment.limit - i);
                Segment segment2 = segment.next;
                Intrinsics.checkNotNull(segment2);
                while (segment2 != segment) {
                    byte[] bArr2 = segment2.data;
                    int i2 = segment2.pos;
                    mac.update(bArr2, i2, segment2.limit - i2);
                    segment2 = segment2.next;
                    Intrinsics.checkNotNull(segment2);
                }
            }
            byte[] doFinal = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final void m2639x1378447b(InputStream inputStream, long j, boolean z) {
        while (true) {
            if (j <= 0 && !z) {
                return;
            }
            Segment writableSegment$okio = writableSegment$okio(1);
            int read = inputStream.read(writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j, 8192 - writableSegment$okio.limit));
            if (read == -1) {
                if (writableSegment$okio.pos == writableSegment$okio.limit) {
                    this.head = writableSegment$okio.pop();
                    SegmentPool.recycle(writableSegment$okio);
                }
                if (z) {
                    return;
                } else {
                    throw new EOFException();
                }
            }
            writableSegment$okio.limit += read;
            long j2 = read;
            this.size += j2;
            j -= j2;
        }
    }

    @NotNull
    public Buffer clone() {
        return copy();
    }

    @JvmOverloads
    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long j) {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo$default(this, out, j, 0L, 4, (Object) null);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long fromIndex) {
        return indexOf(b, fromIndex, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes, long fromIndex) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        long j = 0;
        if (fromIndex >= 0) {
            Segment segment = this.head;
            if (segment == null) {
                return -1L;
            }
            if (size() - fromIndex < fromIndex) {
                j = size();
                while (j > fromIndex) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    j -= segment.limit - segment.pos;
                }
                if (targetBytes.size() == 2) {
                    byte b = targetBytes.getByte(0);
                    byte b2 = targetBytes.getByte(1);
                    while (j < size()) {
                        byte[] bArr = segment.data;
                        i = (int) ((segment.pos + fromIndex) - j);
                        int i3 = segment.limit;
                        while (i < i3) {
                            byte b3 = bArr[i];
                            if (b3 != b && b3 != b2) {
                                i++;
                            }
                            i2 = segment.pos;
                        }
                        j += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        fromIndex = j;
                    }
                    return -1L;
                }
                byte[] internalArray$okio = targetBytes.internalArray$okio();
                while (j < size()) {
                    byte[] bArr2 = segment.data;
                    i = (int) ((segment.pos + fromIndex) - j);
                    int i4 = segment.limit;
                    while (i < i4) {
                        byte b4 = bArr2[i];
                        for (byte b5 : internalArray$okio) {
                            if (b4 == b5) {
                                i2 = segment.pos;
                            }
                        }
                        i++;
                    }
                    j += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    fromIndex = j;
                }
                return -1L;
            }
            while (true) {
                long j2 = (segment.limit - segment.pos) + j;
                if (j2 > fromIndex) {
                    break;
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j = j2;
            }
            if (targetBytes.size() == 2) {
                byte b6 = targetBytes.getByte(0);
                byte b7 = targetBytes.getByte(1);
                while (j < size()) {
                    byte[] bArr3 = segment.data;
                    i = (int) ((segment.pos + fromIndex) - j);
                    int i5 = segment.limit;
                    while (i < i5) {
                        byte b8 = bArr3[i];
                        if (b8 != b6 && b8 != b7) {
                            i++;
                        }
                        i2 = segment.pos;
                    }
                    j += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    fromIndex = j;
                }
                return -1L;
            }
            byte[] internalArray$okio2 = targetBytes.internalArray$okio();
            while (j < size()) {
                byte[] bArr4 = segment.data;
                i = (int) ((segment.pos + fromIndex) - j);
                int i6 = segment.limit;
                while (i < i6) {
                    byte b9 = bArr4[i];
                    for (byte b10 : internalArray$okio2) {
                        if (b9 == b10) {
                            i2 = segment.pos;
                        }
                    }
                    i++;
                }
                j += segment.limit - segment.pos;
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                fromIndex = j;
            }
            return -1L;
            return (i - i2) + j;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("fromIndex < 0: ", fromIndex).toString());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, @NotNull ByteString bytes, int bytesOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (offset < 0 || bytesOffset < 0 || byteCount < 0 || size() - offset < byteCount || bytes.size() - bytesOffset < byteCount) {
            return false;
        }
        for (int i = 0; i < byteCount; i++) {
            if (getByte(i + offset) != bytes.getByte(bytesOffset + i)) {
                return false;
            }
        }
        return true;
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readAndWriteUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray(long byteCount) {
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount: ", byteCount).toString());
        }
        if (size() >= byteCount) {
            byte[] bArr = new byte[(int) byteCount];
            readFully(bArr);
            return bArr;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString(long byteCount) {
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount: ", byteCount).toString());
        }
        if (size() < byteCount) {
            throw new EOFException();
        }
        if (byteCount >= 4096) {
            ByteString snapshot = snapshot((int) byteCount);
            skip(byteCount);
            return snapshot;
        }
        return new ByteString(readByteArray(byteCount));
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input, long byteCount) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (byteCount >= 0) {
            m2639x1378447b(input, byteCount, false);
            return this;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", byteCount).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(long byteCount, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount: ", byteCount).toString());
        }
        if (this.size < byteCount) {
            throw new EOFException();
        }
        if (byteCount == 0) {
            return "";
        }
        Segment segment = this.head;
        Intrinsics.checkNotNull(segment);
        int i = segment.pos;
        if (i + byteCount > segment.limit) {
            return new String(readByteArray(byteCount), charset);
        }
        int i2 = (int) byteCount;
        String str = new String(segment.data, i, i2, charset);
        int i3 = segment.pos + i2;
        segment.pos = i3;
        this.size -= byteCount;
        if (i3 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return str;
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8(long byteCount) {
        return readString(byteCount, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict(long limit) {
        if (limit >= 0) {
            long j = limit != Long.MAX_VALUE ? limit + 1 : Long.MAX_VALUE;
            long indexOf = indexOf((byte) 10, 0L, j);
            if (indexOf != -1) {
                return okio.internal.Buffer.readUtf8Line(this, indexOf);
            }
            if (j < size() && getByte(j - 1) == 13 && getByte(j) == 10) {
                return okio.internal.Buffer.readUtf8Line(this, j);
            }
            Buffer buffer = new Buffer();
            copyTo(buffer, 0L, Math.min(32, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), limit) + " content=" + buffer.readByteString().hex() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("limit < 0: ", limit).toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeByte(int b) {
        Segment writableSegment$okio = writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.data;
        int i = writableSegment$okio.limit;
        writableSegment$okio.limit = i + 1;
        bArr[i] = (byte) b;
        setSize$okio(size() + 1);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeDecimalLong(long v) {
        boolean z;
        if (v == 0) {
            return writeByte(48);
        }
        if (v < 0) {
            v = -v;
            if (v < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z = true;
        } else {
            z = false;
        }
        int access$countDigitsIn = okio.internal.Buffer.access$countDigitsIn(v);
        if (z) {
            access$countDigitsIn++;
        }
        Segment writableSegment$okio = writableSegment$okio(access$countDigitsIn);
        byte[] bArr = writableSegment$okio.data;
        int i = writableSegment$okio.limit + access$countDigitsIn;
        while (v != 0) {
            long j = 10;
            i--;
            bArr[i] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (v % j)];
            v /= j;
        }
        if (z) {
            bArr[i - 1] = 45;
        }
        writableSegment$okio.limit += access$countDigitsIn;
        setSize$okio(size() + access$countDigitsIn);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeHexadecimalUnsignedLong(long v) {
        if (v == 0) {
            return writeByte(48);
        }
        long j = (v >>> 1) | v;
        long j2 = j | (j >>> 2);
        long j3 = j2 | (j2 >>> 4);
        long j4 = j3 | (j3 >>> 8);
        long j5 = j4 | (j4 >>> 16);
        long j6 = j5 | (j5 >>> 32);
        long j7 = j6 - ((j6 >>> 1) & 6148914691236517205L);
        long j8 = ((j7 >>> 2) & 3689348814741910323L) + (j7 & 3689348814741910323L);
        long j9 = ((j8 >>> 4) + j8) & 1085102592571150095L;
        long j10 = j9 + (j9 >>> 8);
        long j11 = j10 + (j10 >>> 16);
        int i = (int) ((((j11 & 63) + ((j11 >>> 32) & 63)) + 3) / 4);
        Segment writableSegment$okio = writableSegment$okio(i);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (15 & v)];
            v >>>= 4;
        }
        writableSegment$okio.limit += i;
        setSize$okio(size() + i);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeInt(int i) {
        Segment writableSegment$okio = writableSegment$okio(4);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        writableSegment$okio.limit = i2 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeIntLe(int i) {
        return writeInt(SegmentedByteString.reverseBytes(i));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLong(long v) {
        Segment writableSegment$okio = writableSegment$okio(8);
        byte[] bArr = writableSegment$okio.data;
        int i = writableSegment$okio.limit;
        bArr[i] = (byte) ((v >>> 56) & 255);
        bArr[i + 1] = (byte) ((v >>> 48) & 255);
        bArr[i + 2] = (byte) ((v >>> 40) & 255);
        bArr[i + 3] = (byte) ((v >>> 32) & 255);
        bArr[i + 4] = (byte) ((v >>> 24) & 255);
        bArr[i + 5] = (byte) ((v >>> 16) & 255);
        bArr[i + 6] = (byte) ((v >>> 8) & 255);
        bArr[i + 7] = (byte) (v & 255);
        writableSegment$okio.limit = i + 8;
        setSize$okio(size() + 8);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLongLe(long v) {
        return writeLong(SegmentedByteString.reverseBytes(v));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShort(int s) {
        Segment writableSegment$okio = writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.data;
        int i = writableSegment$okio.limit;
        bArr[i] = (byte) ((s >>> 8) & 255);
        bArr[i + 1] = (byte) (s & 255);
        writableSegment$okio.limit = i + 2;
        setSize$okio(size() + 2);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShortLe(int s) {
        return writeShort((int) SegmentedByteString.reverseBytes((short) s));
    }

    @JvmOverloads
    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out, long byteCount) {
        Intrinsics.checkNotNullParameter(out, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, 0L, byteCount);
        Segment segment = this.head;
        while (byteCount > 0) {
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(byteCount, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, min);
            int i = segment.pos + min;
            segment.pos = i;
            long j = min;
            this.size -= j;
            byteCount -= j;
            if (i == segment.limit) {
                Segment pop = segment.pop();
                this.head = pop;
                SegmentPool.recycle(segment);
                segment = pop;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8CodePoint(int codePoint) {
        if (codePoint < 128) {
            writeByte(codePoint);
        } else if (codePoint < 2048) {
            Segment writableSegment$okio = writableSegment$okio(2);
            byte[] bArr = writableSegment$okio.data;
            int i = writableSegment$okio.limit;
            bArr[i] = (byte) ((codePoint >> 6) | 192);
            bArr[i + 1] = (byte) ((codePoint & 63) | 128);
            writableSegment$okio.limit = i + 2;
            setSize$okio(size() + 2);
        } else if (55296 <= codePoint && codePoint < 57344) {
            writeByte(63);
        } else if (codePoint < 65536) {
            Segment writableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = writableSegment$okio2.data;
            int i2 = writableSegment$okio2.limit;
            bArr2[i2] = (byte) ((codePoint >> 12) | 224);
            bArr2[i2 + 1] = (byte) (((codePoint >> 6) & 63) | 128);
            bArr2[i2 + 2] = (byte) ((codePoint & 63) | 128);
            writableSegment$okio2.limit = i2 + 3;
            setSize$okio(size() + 3);
        } else if (codePoint <= 1114111) {
            Segment writableSegment$okio3 = writableSegment$okio(4);
            byte[] bArr3 = writableSegment$okio3.data;
            int i3 = writableSegment$okio3.limit;
            bArr3[i3] = (byte) ((codePoint >> 18) | 240);
            bArr3[i3 + 1] = (byte) (((codePoint >> 12) & 63) | 128);
            bArr3[i3 + 2] = (byte) (((codePoint >> 6) & 63) | 128);
            bArr3[i3 + 3] = (byte) ((codePoint & 63) | 128);
            writableSegment$okio3.limit = i3 + 4;
            setSize$okio(size() + 4);
        } else {
            throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(codePoint));
        }
        return this;
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return buffer.copyTo(buffer2, j, j2);
    }

    @JvmOverloads
    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long offset, long byteCount) {
        Intrinsics.checkNotNullParameter(out, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, offset, byteCount);
        if (byteCount == 0) {
            return this;
        }
        Segment segment = this.head;
        while (true) {
            Intrinsics.checkNotNull(segment);
            int i = segment.limit;
            int i2 = segment.pos;
            if (offset < i - i2) {
                break;
            }
            offset -= i - i2;
            segment = segment.next;
        }
        while (byteCount > 0) {
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(segment.limit - r10, byteCount);
            out.write(segment.data, (int) (segment.pos + offset), min);
            byteCount -= min;
            segment = segment.next;
            offset = 0;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return buffer.copyTo(buffer2, j);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long fromIndex, long toIndex) {
        Segment segment;
        int i;
        long j = 0;
        if (0 > fromIndex || fromIndex > toIndex) {
            throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + fromIndex + " toIndex=" + toIndex).toString());
        }
        if (toIndex > size()) {
            toIndex = size();
        }
        if (fromIndex == toIndex || (segment = this.head) == null) {
            return -1L;
        }
        if (size() - fromIndex < fromIndex) {
            j = size();
            while (j > fromIndex) {
                segment = segment.prev;
                Intrinsics.checkNotNull(segment);
                j -= segment.limit - segment.pos;
            }
            while (j < toIndex) {
                byte[] bArr = segment.data;
                int min = (int) Math.min(segment.limit, (segment.pos + toIndex) - j);
                i = (int) ((segment.pos + fromIndex) - j);
                while (i < min) {
                    if (bArr[i] != b) {
                        i++;
                    }
                }
                j += segment.limit - segment.pos;
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                fromIndex = j;
            }
            return -1L;
        }
        while (true) {
            long j2 = (segment.limit - segment.pos) + j;
            if (j2 > fromIndex) {
                break;
            }
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
            j = j2;
        }
        while (j < toIndex) {
            byte[] bArr2 = segment.data;
            int min2 = (int) Math.min(segment.limit, (segment.pos + toIndex) - j);
            i = (int) ((segment.pos + fromIndex) - j);
            while (i < min2) {
                if (bArr2[i] != b) {
                    i++;
                }
            }
            j += segment.limit - segment.pos;
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
            fromIndex = j;
        }
        return -1L;
        return (i - segment.pos) + j;
    }

    @Override // okio.BufferedSource
    @Nullable
    public <T> T select(@NotNull TypedOptions<T> options) {
        Intrinsics.checkNotNullParameter(options, "options");
        int select = select(options.getOptions());
        if (select == -1) {
            return null;
        }
        return options.get(select);
    }

    @NotNull
    public final ByteString snapshot(int byteCount) {
        if (byteCount == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(size(), 0L, byteCount);
        Segment segment = this.head;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < byteCount) {
            Intrinsics.checkNotNull(segment);
            int i4 = segment.limit;
            int i5 = segment.pos;
            if (i4 != i5) {
                i2 += i4 - i5;
                i3++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i3];
        int[] iArr = new int[i3 * 2];
        Segment segment2 = this.head;
        int i6 = 0;
        while (i < byteCount) {
            Intrinsics.checkNotNull(segment2);
            bArr[i6] = segment2.data;
            i += segment2.limit - segment2.pos;
            iArr[i6] = Math.min(i, byteCount);
            iArr[i6 + i3] = segment2.pos;
            segment2.shared = true;
            i6++;
            segment2 = segment2.next;
        }
        return new C1497SegmentedByteString(bArr, iArr);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string, int beginIndex, int endIndex) {
        char charAt;
        Intrinsics.checkNotNullParameter(string, "string");
        if (beginIndex < 0) {
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(beginIndex, "beginIndex < 0: ").toString());
        }
        if (endIndex >= beginIndex) {
            if (endIndex > string.length()) {
                StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(endIndex, "endIndex > string.length: ", " > ");
                m2939xab142723.append(string.length());
                throw new IllegalArgumentException(m2939xab142723.toString().toString());
            }
            while (beginIndex < endIndex) {
                char charAt2 = string.charAt(beginIndex);
                if (charAt2 < 128) {
                    Segment writableSegment$okio = writableSegment$okio(1);
                    byte[] bArr = writableSegment$okio.data;
                    int i = writableSegment$okio.limit - beginIndex;
                    int min = Math.min(endIndex, 8192 - i);
                    int i2 = beginIndex + 1;
                    bArr[beginIndex + i] = (byte) charAt2;
                    while (true) {
                        beginIndex = i2;
                        if (beginIndex >= min || (charAt = string.charAt(beginIndex)) >= 128) {
                            break;
                        }
                        i2 = beginIndex + 1;
                        bArr[beginIndex + i] = (byte) charAt;
                    }
                    int i3 = writableSegment$okio.limit;
                    int i4 = (i + beginIndex) - i3;
                    writableSegment$okio.limit = i3 + i4;
                    setSize$okio(size() + i4);
                } else {
                    if (charAt2 < 2048) {
                        Segment writableSegment$okio2 = writableSegment$okio(2);
                        byte[] bArr2 = writableSegment$okio2.data;
                        int i5 = writableSegment$okio2.limit;
                        bArr2[i5] = (byte) ((charAt2 >> 6) | 192);
                        bArr2[i5 + 1] = (byte) ((charAt2 & '?') | 128);
                        writableSegment$okio2.limit = i5 + 2;
                        setSize$okio(size() + 2);
                    } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                        int i6 = beginIndex + 1;
                        char charAt3 = i6 < endIndex ? string.charAt(i6) : (char) 0;
                        if (charAt2 <= 56319 && 56320 <= charAt3 && charAt3 < 57344) {
                            int i7 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                            Segment writableSegment$okio3 = writableSegment$okio(4);
                            byte[] bArr3 = writableSegment$okio3.data;
                            int i8 = writableSegment$okio3.limit;
                            bArr3[i8] = (byte) ((i7 >> 18) | 240);
                            bArr3[i8 + 1] = (byte) (((i7 >> 12) & 63) | 128);
                            bArr3[i8 + 2] = (byte) (((i7 >> 6) & 63) | 128);
                            bArr3[i8 + 3] = (byte) ((i7 & 63) | 128);
                            writableSegment$okio3.limit = i8 + 4;
                            setSize$okio(size() + 4);
                            beginIndex += 2;
                        } else {
                            writeByte(63);
                            beginIndex = i6;
                        }
                    } else {
                        Segment writableSegment$okio4 = writableSegment$okio(3);
                        byte[] bArr4 = writableSegment$okio4.data;
                        int i9 = writableSegment$okio4.limit;
                        bArr4[i9] = (byte) ((charAt2 >> '\f') | 224);
                        bArr4[i9 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                        bArr4[i9 + 2] = (byte) ((charAt2 & '?') | 128);
                        writableSegment$okio4.limit = i9 + 3;
                        setSize$okio(size() + 3);
                    }
                    beginIndex++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3329x34271fae(endIndex, beginIndex, "endIndex < beginIndex: ", " < ").toString());
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i = 0;
        while (i < sink.length) {
            int read = read(sink, i, sink.length - i);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, int beginIndex, int endIndex, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (beginIndex < 0) {
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(beginIndex, "beginIndex < 0: ").toString());
        }
        if (endIndex >= beginIndex) {
            if (endIndex <= string.length()) {
                if (Intrinsics.areEqual(charset, Charsets.UTF_8)) {
                    return writeUtf8(string, beginIndex, endIndex);
                }
                String substring = string.substring(beginIndex, endIndex);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                byte[] bytes = substring.getBytes(charset);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                return write(bytes, 0, bytes.length);
            }
            StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(endIndex, "endIndex > string.length: ", " > ");
            m2939xab142723.append(string.length());
            throw new IllegalArgumentException(m2939xab142723.toString().toString());
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3329x34271fae(endIndex, beginIndex, "endIndex < beginIndex: ", " < ").toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        int remaining = source.remaining();
        int i = remaining;
        while (i > 0) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i, 8192 - writableSegment$okio.limit);
            source.get(writableSegment$okio.data, writableSegment$okio.limit, min);
            i -= min;
            writableSegment$okio.limit += min;
        }
        this.size += remaining;
        return remaining;
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink, int offset, int byteCount) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        SegmentedByteString.checkOffsetAndCount(sink.length, offset, byteCount);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(byteCount, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i = segment.pos;
        ArraysKt___ArraysJvmKt.copyInto(bArr, sink, offset, i, i + min);
        segment.pos += min;
        setSize$okio(size() - min);
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long offset) {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo(out, offset, this.size - offset);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long offset, long byteCount) {
        Intrinsics.checkNotNullParameter(out, "out");
        SegmentedByteString.checkOffsetAndCount(size(), offset, byteCount);
        if (byteCount != 0) {
            out.setSize$okio(out.size() + byteCount);
            Segment segment = this.head;
            while (true) {
                Intrinsics.checkNotNull(segment);
                int i = segment.limit;
                int i2 = segment.pos;
                if (offset < i - i2) {
                    break;
                }
                offset -= i - i2;
                segment = segment.next;
            }
            while (byteCount > 0) {
                Intrinsics.checkNotNull(segment);
                Segment sharedCopy = segment.sharedCopy();
                int i3 = sharedCopy.pos + ((int) offset);
                sharedCopy.pos = i3;
                sharedCopy.limit = Math.min(i3 + ((int) byteCount), sharedCopy.limit);
                Segment segment2 = out.head;
                if (segment2 == null) {
                    sharedCopy.prev = sharedCopy;
                    sharedCopy.next = sharedCopy;
                    out.head = sharedCopy;
                } else {
                    Intrinsics.checkNotNull(segment2);
                    Segment segment3 = segment2.prev;
                    Intrinsics.checkNotNull(segment3);
                    segment3.push(sharedCopy);
                }
                byteCount -= sharedCopy.limit - sharedCopy.pos;
                segment = segment.next;
                offset = 0;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString, int offset, int byteCount) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(this, offset, byteCount);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return write(source, 0, source.length);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source, int offset, int byteCount) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j = byteCount;
        SegmentedByteString.checkOffsetAndCount(source.length, offset, j);
        int i = byteCount + offset;
        while (offset < i) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i - offset, 8192 - writableSegment$okio.limit);
            int i2 = offset + min;
            ArraysKt___ArraysJvmKt.copyInto(source, writableSegment$okio.data, writableSegment$okio.limit, offset, i2);
            writableSegment$okio.limit += min;
            offset = i2;
        }
        setSize$okio(size() + j);
        return this;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long byteCount) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (byteCount < 0) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", byteCount).toString());
        }
        if (size() == 0) {
            return -1L;
        }
        if (byteCount > size()) {
            byteCount = size();
        }
        sink.write(this, byteCount);
        return byteCount;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull Source source, long byteCount) {
        Intrinsics.checkNotNullParameter(source, "source");
        while (byteCount > 0) {
            long read = source.read(this, byteCount);
            if (read == -1) {
                throw new EOFException();
            }
            byteCount -= read;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes, long fromIndex) {
        int i;
        long j = fromIndex;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j2 = 0;
        if (j >= 0) {
            Segment segment = this.head;
            if (segment != null) {
                if (size() - j < j) {
                    j2 = size();
                    while (j2 > j) {
                        segment = segment.prev;
                        Intrinsics.checkNotNull(segment);
                        j2 -= segment.limit - segment.pos;
                    }
                    byte[] internalArray$okio = bytes.internalArray$okio();
                    byte b = internalArray$okio[0];
                    int size = bytes.size();
                    long size2 = (size() - size) + 1;
                    while (j2 < size2) {
                        byte[] bArr = segment.data;
                        long j3 = size2;
                        int min = (int) Math.min(segment.limit, (segment.pos + size2) - j2);
                        i = (int) ((segment.pos + j) - j2);
                        while (i < min) {
                            if (bArr[i] == b && okio.internal.Buffer.rangeEquals(segment, i + 1, internalArray$okio, 1, size)) {
                                return (i - segment.pos) + j2;
                            }
                            i++;
                        }
                        j2 += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j = j2;
                        size2 = j3;
                    }
                } else {
                    while (true) {
                        long j4 = (segment.limit - segment.pos) + j2;
                        if (j4 > j) {
                            break;
                        }
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j2 = j4;
                    }
                    byte[] internalArray$okio2 = bytes.internalArray$okio();
                    byte b2 = internalArray$okio2[0];
                    int size3 = bytes.size();
                    long size4 = (size() - size3) + 1;
                    while (j2 < size4) {
                        byte[] bArr2 = segment.data;
                        long j5 = size4;
                        int min2 = (int) Math.min(segment.limit, (segment.pos + size4) - j2);
                        i = (int) ((segment.pos + j) - j2);
                        while (i < min2) {
                            if (bArr2[i] == b2 && okio.internal.Buffer.rangeEquals(segment, i + 1, internalArray$okio2, 1, size3)) {
                                return (i - segment.pos) + j2;
                            }
                            i++;
                        }
                        j2 += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j = j2;
                        size4 = j5;
                    }
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("fromIndex < 0: ", j).toString());
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long byteCount) {
        Segment segment;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source != this) {
            SegmentedByteString.checkOffsetAndCount(source.size(), 0L, byteCount);
            while (byteCount > 0) {
                Segment segment2 = source.head;
                Intrinsics.checkNotNull(segment2);
                int i = segment2.limit;
                Intrinsics.checkNotNull(source.head);
                if (byteCount < i - r1.pos) {
                    Segment segment3 = this.head;
                    if (segment3 != null) {
                        Intrinsics.checkNotNull(segment3);
                        segment = segment3.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((segment.limit + byteCount) - (segment.shared ? 0 : segment.pos) <= 8192) {
                            Segment segment4 = source.head;
                            Intrinsics.checkNotNull(segment4);
                            segment4.writeTo(segment, (int) byteCount);
                            source.setSize$okio(source.size() - byteCount);
                            setSize$okio(size() + byteCount);
                            return;
                        }
                    }
                    Segment segment5 = source.head;
                    Intrinsics.checkNotNull(segment5);
                    source.head = segment5.split((int) byteCount);
                }
                Segment segment6 = source.head;
                Intrinsics.checkNotNull(segment6);
                long j = segment6.limit - segment6.pos;
                source.head = segment6.pop();
                Segment segment7 = this.head;
                if (segment7 == null) {
                    this.head = segment6;
                    segment6.prev = segment6;
                    segment6.next = segment6;
                } else {
                    Intrinsics.checkNotNull(segment7);
                    Segment segment8 = segment7.prev;
                    Intrinsics.checkNotNull(segment8);
                    segment8.push(segment6).compact();
                }
                source.setSize$okio(source.size() - j);
                setSize$okio(size() + j);
                byteCount -= j;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }
}
