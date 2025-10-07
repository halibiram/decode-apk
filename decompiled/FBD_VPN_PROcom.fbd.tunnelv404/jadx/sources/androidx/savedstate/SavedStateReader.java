package androidx.savedstate;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.core.os.BundleCompat;
import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC0961xbc4021d9;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000Ò\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\f\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\u0016\n\u0002\u0010\u0018\n\u0002\b\u0005\n\u0002\u0010\u0019\n\u0002\b\n\n\u0002\u0010\u0013\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u0016\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010$\n\u0002\b\n\b\u0087@\u0018\u00002\u00020\u0001B\u0015\b\u0001\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\"\u0010 J\u0015\u0010#\u001a\u00020$2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u0004\u0018\u00010$2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b(\u0010)J\u0015\u0010*\u001a\u00020+2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u0004\u0018\u00010+2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b/\u00100J\u0015\u00101\u001a\u0002022\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b3\u00104J\u0017\u00105\u001a\u0004\u0018\u0001022\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b6\u00107J\u0015\u00108\u001a\u0002092\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b:\u0010;J\u0017\u0010<\u001a\u0004\u0018\u0001092\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b=\u0010>J-\u0010?\u001a\u0002H@\"\b\b\u0000\u0010@*\u00020A2\u0006\u0010\t\u001a\u00020\n2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0004\bD\u0010EJ$\u0010?\u001a\u0002H@\"\n\b\u0000\u0010@\u0018\u0001*\u00020A2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0004\bD\u0010FJ/\u0010G\u001a\u0004\u0018\u0001H@\"\b\b\u0000\u0010@*\u00020A2\u0006\u0010\t\u001a\u00020\n2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0004\bH\u0010EJ&\u0010G\u001a\u0004\u0018\u0001H@\"\n\b\u0000\u0010@\u0018\u0001*\u00020A2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0004\bH\u0010FJ-\u0010I\u001a\u0002H@\"\b\b\u0000\u0010@*\u00020J2\u0006\u0010\t\u001a\u00020\n2\f\u0010K\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0004\bL\u0010MJ$\u0010I\u001a\u0002H@\"\n\b\u0000\u0010@\u0018\u0001*\u00020J2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0004\bL\u0010NJ/\u0010O\u001a\u0004\u0018\u0001H@\"\b\b\u0000\u0010@*\u00020J2\u0006\u0010\t\u001a\u00020\n2\f\u0010K\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0004\bP\u0010MJ&\u0010O\u001a\u0004\u0018\u0001H@\"\n\b\u0000\u0010@\u0018\u0001*\u00020J2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0004\bP\u0010NJ\u0015\u0010Q\u001a\u00020R2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bS\u0010TJ\u0017\u0010U\u001a\u0004\u0018\u00010R2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bV\u0010TJ\u0015\u0010W\u001a\u00020X2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bY\u0010ZJ\u0017\u0010[\u001a\u0004\u0018\u00010X2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\\\u0010ZJ\u001f\u0010]\u001a\f\u0012\b\u0012\u00060\u0003j\u0002`\u00040^2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b_\u0010`J!\u0010a\u001a\u000e\u0012\b\u0012\u00060\u0003j\u0002`\u0004\u0018\u00010^2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bb\u0010`J\u0015\u0010c\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bd\u0010eJ\u0017\u0010f\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bg\u0010eJ\u001b\u0010h\u001a\b\u0012\u0004\u0012\u0002020i2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bj\u0010kJ\u001d\u0010l\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010i2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bm\u0010kJ\u001b\u0010n\u001a\b\u0012\u0004\u0012\u00020\u001e0i2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bo\u0010kJ\u001d\u0010p\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010i2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bq\u0010kJ\u001f\u0010r\u001a\f\u0012\b\u0012\u00060\u0003j\u0002`\u00040i2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bs\u0010kJ!\u0010t\u001a\u000e\u0012\b\u0012\u00060\u0003j\u0002`\u0004\u0018\u00010i2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bu\u0010kJ\u001b\u0010v\u001a\b\u0012\u0004\u0012\u00020\n0i2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\bw\u0010kJ\u001d\u0010x\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010i2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\by\u0010kJ3\u0010z\u001a\b\u0012\u0004\u0012\u0002H@0i\"\b\b\u0000\u0010@*\u00020A2\u0006\u0010\t\u001a\u00020\n2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0004\b{\u0010|J*\u0010z\u001a\b\u0012\u0004\u0012\u0002H@0i\"\n\b\u0000\u0010@\u0018\u0001*\u00020A2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0004\b{\u0010kJ5\u0010}\u001a\n\u0012\u0004\u0012\u0002H@\u0018\u00010i\"\b\b\u0000\u0010@*\u00020A2\u0006\u0010\t\u001a\u00020\n2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0004\b~\u0010|J,\u0010}\u001a\n\u0012\u0004\u0012\u0002H@\u0018\u00010i\"\n\b\u0000\u0010@\u0018\u0001*\u00020A2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0004\b~\u0010kJ\u0018\u0010\u007f\u001a\u00030\u0080\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u001b\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0080\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u0084\u0001\u0010\u0082\u0001J\u0019\u0010\u0085\u0001\u001a\u00030\u0086\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u001b\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0086\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u008a\u0001\u0010\u0088\u0001J\u001e\u0010\u008b\u0001\u001a\b\u0012\u0004\u0012\u00020\u001e0^2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J \u0010\u008e\u0001\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010^2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u008f\u0001\u0010\u008d\u0001J\u0019\u0010\u0090\u0001\u001a\u00030\u0091\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u001b\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0091\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u0095\u0001\u0010\u0093\u0001J\u0019\u0010\u0096\u0001\u001a\u00030\u0097\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u0098\u0001\u0010\u0099\u0001J\u001b\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0097\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u009b\u0001\u0010\u0099\u0001J\u0019\u0010\u009c\u0001\u001a\u00030\u009d\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b\u009e\u0001\u0010\u009f\u0001J\u001b\u0010 \u0001\u001a\u0005\u0018\u00010\u009d\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b¡\u0001\u0010\u009f\u0001J\u0019\u0010¢\u0001\u001a\u00030£\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b¤\u0001\u0010¥\u0001J\u001b\u0010¦\u0001\u001a\u0005\u0018\u00010£\u00012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b§\u0001\u0010¥\u0001J\u001e\u0010¨\u0001\u001a\b\u0012\u0004\u0012\u00020\n0^2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b©\u0001\u0010ª\u0001J \u0010«\u0001\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010^2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b¬\u0001\u0010ª\u0001J6\u0010\u00ad\u0001\u001a\b\u0012\u0004\u0012\u0002H@0^\"\b\b\u0000\u0010@*\u00020A2\u0006\u0010\t\u001a\u00020\n2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0006\b®\u0001\u0010¯\u0001J-\u0010\u00ad\u0001\u001a\b\u0012\u0004\u0012\u0002H@0^\"\n\b\u0000\u0010@\u0018\u0001*\u00020A2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0006\b®\u0001\u0010°\u0001J8\u0010±\u0001\u001a\n\u0012\u0004\u0012\u0002H@\u0018\u00010^\"\b\b\u0000\u0010@*\u00020A2\u0006\u0010\t\u001a\u00020\n2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0006\b²\u0001\u0010¯\u0001J/\u0010±\u0001\u001a\n\u0012\u0004\u0012\u0002H@\u0018\u00010^\"\n\b\u0000\u0010@\u0018\u0001*\u00020A2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0006\b²\u0001\u0010°\u0001J7\u0010³\u0001\u001a\t\u0012\u0004\u0012\u0002H@0´\u0001\"\b\b\u0000\u0010@*\u00020A2\u0006\u0010\t\u001a\u00020\n2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0006\bµ\u0001\u0010¶\u0001J.\u0010³\u0001\u001a\t\u0012\u0004\u0012\u0002H@0´\u0001\"\n\b\u0000\u0010@\u0018\u0001*\u00020A2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0006\bµ\u0001\u0010·\u0001J9\u0010¸\u0001\u001a\u000b\u0012\u0004\u0012\u0002H@\u0018\u00010´\u0001\"\b\b\u0000\u0010@*\u00020A2\u0006\u0010\t\u001a\u00020\n2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002H@0C¢\u0006\u0006\b¹\u0001\u0010¶\u0001J0\u0010¸\u0001\u001a\u000b\u0012\u0004\u0012\u0002H@\u0018\u00010´\u0001\"\n\b\u0000\u0010@\u0018\u0001*\u00020A2\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0006\b¹\u0001\u0010·\u0001J\u001c\u0010º\u0001\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b»\u0001\u0010¼\u0001J \u0010½\u0001\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00042\u0006\u0010\t\u001a\u00020\n¢\u0006\u0006\b¾\u0001\u0010¼\u0001J\u0010\u0010¿\u0001\u001a\u000202¢\u0006\u0006\bÀ\u0001\u0010Á\u0001J\u0010\u0010Â\u0001\u001a\u00020\u0010¢\u0006\u0006\bÃ\u0001\u0010Ä\u0001J\u0017\u0010Å\u0001\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n¢\u0006\u0005\bÆ\u0001\u0010\u0012J\u001a\u0010Ç\u0001\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nH\u0086\u0002¢\u0006\u0005\bÈ\u0001\u0010\u0012J\u001d\u0010É\u0001\u001a\u00020\u00102\u000b\u0010Ê\u0001\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0006\bË\u0001\u0010Ì\u0001J\u0010\u0010Í\u0001\u001a\u000202¢\u0006\u0006\bÎ\u0001\u0010Á\u0001J\u0010\u0010Ï\u0001\u001a\u00020\n¢\u0006\u0006\bÐ\u0001\u0010Ñ\u0001J\u001f\u0010Ò\u0001\u001a\u0011\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010Ó\u0001¢\u0006\u0006\bÔ\u0001\u0010Õ\u0001J\u001e\u0010Ö\u0001\u001a\u00020\u00102\t\u0010Ê\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0006\b×\u0001\u0010Ø\u0001J\u0013\u0010Ù\u0001\u001a\u000202HÖ\u0001¢\u0006\u0006\bÚ\u0001\u0010Á\u0001J\u0013\u0010Û\u0001\u001a\u00020\nHÖ\u0001¢\u0006\u0006\bÜ\u0001\u0010Ñ\u0001R\u0012\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004¨\u0006Ý\u0001"}, d2 = {"Landroidx/savedstate/SavedStateReader;", "", "source", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "constructor-impl", "(Landroid/os/Bundle;)Landroid/os/Bundle;", "getBinder", "Landroid/os/IBinder;", "key", "", "getBinder-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;", "getBinderOrNull", "getBinderOrNull-impl", "getBoolean", "", "getBoolean-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Z", "getBooleanOrNull", "getBooleanOrNull-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Boolean;", "getChar", "", "getChar-impl", "(Landroid/os/Bundle;Ljava/lang/String;)C", "getCharOrNull", "getCharOrNull-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Character;", "getCharSequence", "", "getCharSequence-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/CharSequence;", "getCharSequenceOrNull", "getCharSequenceOrNull-impl", "getDouble", "", "getDouble-impl", "(Landroid/os/Bundle;Ljava/lang/String;)D", "getDoubleOrNull", "getDoubleOrNull-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Double;", "getFloat", "", "getFloat-impl", "(Landroid/os/Bundle;Ljava/lang/String;)F", "getFloatOrNull", "getFloatOrNull-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Float;", "getInt", "", "getInt-impl", "(Landroid/os/Bundle;Ljava/lang/String;)I", "getIntOrNull", "getIntOrNull-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;", "getLong", "", "getLong-impl", "(Landroid/os/Bundle;Ljava/lang/String;)J", "getLongOrNull", "getLongOrNull-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;", "getParcelable", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/os/Parcelable;", "parcelableClass", "Lkotlin/reflect/KClass;", "getParcelable-impl", "(Landroid/os/Bundle;Ljava/lang/String;Lkotlin/reflect/KClass;)Landroid/os/Parcelable;", "(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;", "getParcelableOrNull", "getParcelableOrNull-impl", "getJavaSerializable", "Ljava/io/Serializable;", "serializableClass", "getJavaSerializable-impl", "(Landroid/os/Bundle;Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/io/Serializable;", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;", "getJavaSerializableOrNull", "getJavaSerializableOrNull-impl", "getSize", "Landroid/util/Size;", "getSize-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Landroid/util/Size;", "getSizeOrNull", "getSizeOrNull-impl", "getSizeF", "Landroid/util/SizeF;", "getSizeF-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Landroid/util/SizeF;", "getSizeFOrNull", "getSizeFOrNull-impl", "getSavedStateArray", "", "getSavedStateArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;", "getSavedStateArrayOrNull", "getSavedStateArrayOrNull-impl", "getString", "getString-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;", "getStringOrNull", "getStringOrNull-impl", "getIntList", "", "getIntList-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;", "getIntListOrNull", "getIntListOrNull-impl", "getCharSequenceList", "getCharSequenceList-impl", "getCharSequenceListOrNull", "getCharSequenceListOrNull-impl", "getSavedStateList", "getSavedStateList-impl", "getSavedStateListOrNull", "getSavedStateListOrNull-impl", "getStringList", "getStringList-impl", "getStringListOrNull", "getStringListOrNull-impl", "getParcelableList", "getParcelableList-impl", "(Landroid/os/Bundle;Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/util/List;", "getParcelableListOrNull", "getParcelableListOrNull-impl", "getBooleanArray", "", "getBooleanArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;)[Z", "getBooleanArrayOrNull", "getBooleanArrayOrNull-impl", "getCharArray", "", "getCharArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;)[C", "getCharArrayOrNull", "getCharArrayOrNull-impl", "getCharSequenceArray", "getCharSequenceArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;", "getCharSequenceArrayOrNull", "getCharSequenceArrayOrNull-impl", "getDoubleArray", "", "getDoubleArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;)[D", "getDoubleArrayOrNull", "getDoubleArrayOrNull-impl", "getFloatArray", "", "getFloatArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;)[F", "getFloatArrayOrNull", "getFloatArrayOrNull-impl", "getIntArray", "", "getIntArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;)[I", "getIntArrayOrNull", "getIntArrayOrNull-impl", "getLongArray", "", "getLongArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;)[J", "getLongArrayOrNull", "getLongArrayOrNull-impl", "getStringArray", "getStringArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;", "getStringArrayOrNull", "getStringArrayOrNull-impl", "getParcelableArray", "getParcelableArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;Lkotlin/reflect/KClass;)[Landroid/os/Parcelable;", "(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Parcelable;", "getParcelableArrayOrNull", "getParcelableArrayOrNull-impl", "getSparseParcelableArray", "Landroid/util/SparseArray;", "getSparseParcelableArray-impl", "(Landroid/os/Bundle;Ljava/lang/String;Lkotlin/reflect/KClass;)Landroid/util/SparseArray;", "(Landroid/os/Bundle;Ljava/lang/String;)Landroid/util/SparseArray;", "getSparseParcelableArrayOrNull", "getSparseParcelableArrayOrNull-impl", "getSavedState", "getSavedState-impl", "(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;", "getSavedStateOrNull", "getSavedStateOrNull-impl", "size", "size-impl", "(Landroid/os/Bundle;)I", "isEmpty", "isEmpty-impl", "(Landroid/os/Bundle;)Z", "isNull", "isNull-impl", "contains", "contains-impl", "contentDeepEquals", "other", "contentDeepEquals-impl", "(Landroid/os/Bundle;Landroid/os/Bundle;)Z", "contentDeepHashCode", "contentDeepHashCode-impl", "contentDeepToString", "contentDeepToString-impl", "(Landroid/os/Bundle;)Ljava/lang/String;", "toMap", "", "toMap-impl", "(Landroid/os/Bundle;)Ljava/util/Map;", "equals", "equals-impl", "(Landroid/os/Bundle;Ljava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "toString-impl", "savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
@SourceDebugExtension({"SMAP\nSavedStateReader.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateReader.android.kt\nandroidx/savedstate/SavedStateReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,915:1\n653#1:916\n689#1:917\n510#1:918\n545#1:919\n1#2:920\n*S KotlinDebug\n*F\n+ 1 SavedStateReader.android.kt\nandroidx/savedstate/SavedStateReader\n*L\n421#1:916\n426#1:917\n456#1:918\n461#1:919\n*E\n"})
/* loaded from: classes.dex */
public final class SavedStateReader {

    @NotNull
    private final Bundle source;

    @PublishedApi
    private /* synthetic */ SavedStateReader(Bundle bundle) {
        this.source = bundle;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SavedStateReader m683boximpl(Bundle bundle) {
        return new SavedStateReader(bundle);
    }

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static Bundle m684constructorimpl(@NotNull Bundle source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source;
    }

    /* renamed from: contains-impl, reason: not valid java name */
    public static final boolean m685containsimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.containsKey(key);
    }

    /* renamed from: contentDeepEquals-impl, reason: not valid java name */
    public static final boolean m686contentDeepEqualsimpl(Bundle bundle, @NotNull Bundle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return SavedStateReaderKt__SavedStateReader_androidKt.access$contentDeepEquals(bundle, other);
    }

    /* renamed from: contentDeepHashCode-impl, reason: not valid java name */
    public static final int m687contentDeepHashCodeimpl(Bundle bundle) {
        return SavedStateReaderKt__SavedStateReader_androidKt.access$contentDeepHashCode(bundle);
    }

    @NotNull
    /* renamed from: contentDeepToString-impl, reason: not valid java name */
    public static final String m688contentDeepToStringimpl(Bundle bundle) {
        StringBuilder sb = new StringBuilder((AbstractC0296x1378447b.coerceAtMost(bundle.size(), 429496729) * 5) + 2);
        SavedStateReaderKt__SavedStateReader_androidKt.access$contentDeepToString(bundle, sb, new ArrayList());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m689equalsimpl(Bundle bundle, Object obj) {
        return (obj instanceof SavedStateReader) && Intrinsics.areEqual(bundle, ((SavedStateReader) obj).getSource());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m690equalsimpl0(Bundle bundle, Bundle bundle2) {
        return Intrinsics.areEqual(bundle, bundle2);
    }

    @NotNull
    /* renamed from: getBinder-impl, reason: not valid java name */
    public static final IBinder m691getBinderimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        IBinder binder = bundle.getBinder(key);
        if (binder != null) {
            return binder;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getBinderOrNull-impl, reason: not valid java name */
    public static final IBinder m692getBinderOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getBinder(key);
    }

    /* renamed from: getBoolean-impl, reason: not valid java name */
    public static final boolean m693getBooleanimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        boolean z = bundle.getBoolean(key, false);
        if (!z && bundle.getBoolean(key, true)) {
            throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
        }
        return z;
    }

    @NotNull
    /* renamed from: getBooleanArray-impl, reason: not valid java name */
    public static final boolean[] m694getBooleanArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        boolean[] booleanArray = bundle.getBooleanArray(key);
        if (booleanArray != null) {
            return booleanArray;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getBooleanArrayOrNull-impl, reason: not valid java name */
    public static final boolean[] m695getBooleanArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getBooleanArray(key);
    }

    @Nullable
    /* renamed from: getBooleanOrNull-impl, reason: not valid java name */
    public static final Boolean m696getBooleanOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        boolean z = bundle.getBoolean(key, false);
        if (!z && bundle.getBoolean(key, true)) {
            return null;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: getChar-impl, reason: not valid java name */
    public static final char m697getCharimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        char c = bundle.getChar(key, (char) 0);
        if (c == 0 && bundle.getChar(key, CharCompanionObject.MAX_VALUE) == 65535) {
            throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
        }
        return c;
    }

    @NotNull
    /* renamed from: getCharArray-impl, reason: not valid java name */
    public static final char[] m698getCharArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        char[] charArray = bundle.getCharArray(key);
        if (charArray != null) {
            return charArray;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getCharArrayOrNull-impl, reason: not valid java name */
    public static final char[] m699getCharArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getCharArray(key);
    }

    @Nullable
    /* renamed from: getCharOrNull-impl, reason: not valid java name */
    public static final Character m700getCharOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        char c = bundle.getChar(key, (char) 0);
        if (c == 0 && bundle.getChar(key, CharCompanionObject.MAX_VALUE) == 65535) {
            return null;
        }
        return Character.valueOf(c);
    }

    @NotNull
    /* renamed from: getCharSequence-impl, reason: not valid java name */
    public static final CharSequence m701getCharSequenceimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        CharSequence charSequence = bundle.getCharSequence(key);
        if (charSequence != null) {
            return charSequence;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @NotNull
    /* renamed from: getCharSequenceArray-impl, reason: not valid java name */
    public static final CharSequence[] m702getCharSequenceArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        CharSequence[] charSequenceArray = bundle.getCharSequenceArray(key);
        if (charSequenceArray != null) {
            return charSequenceArray;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getCharSequenceArrayOrNull-impl, reason: not valid java name */
    public static final CharSequence[] m703getCharSequenceArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getCharSequenceArray(key);
    }

    @NotNull
    /* renamed from: getCharSequenceList-impl, reason: not valid java name */
    public static final List<CharSequence> m704getCharSequenceListimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ArrayList<CharSequence> charSequenceArrayList = bundle.getCharSequenceArrayList(key);
        if (charSequenceArrayList != null) {
            return charSequenceArrayList;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getCharSequenceListOrNull-impl, reason: not valid java name */
    public static final List<CharSequence> m705getCharSequenceListOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getCharSequenceArrayList(key);
    }

    @Nullable
    /* renamed from: getCharSequenceOrNull-impl, reason: not valid java name */
    public static final CharSequence m706getCharSequenceOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getCharSequence(key);
    }

    /* renamed from: getDouble-impl, reason: not valid java name */
    public static final double m707getDoubleimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        double d = bundle.getDouble(key, Double.MIN_VALUE);
        if (d == Double.MIN_VALUE && bundle.getDouble(key, Double.MAX_VALUE) == Double.MAX_VALUE) {
            throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
        }
        return d;
    }

    @NotNull
    /* renamed from: getDoubleArray-impl, reason: not valid java name */
    public static final double[] m708getDoubleArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        double[] doubleArray = bundle.getDoubleArray(key);
        if (doubleArray != null) {
            return doubleArray;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getDoubleArrayOrNull-impl, reason: not valid java name */
    public static final double[] m709getDoubleArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getDoubleArray(key);
    }

    @Nullable
    /* renamed from: getDoubleOrNull-impl, reason: not valid java name */
    public static final Double m710getDoubleOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        double d = bundle.getDouble(key, Double.MIN_VALUE);
        if (d == Double.MIN_VALUE && bundle.getDouble(key, Double.MAX_VALUE) == Double.MAX_VALUE) {
            return null;
        }
        return Double.valueOf(d);
    }

    /* renamed from: getFloat-impl, reason: not valid java name */
    public static final float m711getFloatimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        float f = bundle.getFloat(key, Float.MIN_VALUE);
        if (f == Float.MIN_VALUE && bundle.getFloat(key, Float.MAX_VALUE) == Float.MAX_VALUE) {
            throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
        }
        return f;
    }

    @NotNull
    /* renamed from: getFloatArray-impl, reason: not valid java name */
    public static final float[] m712getFloatArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        float[] floatArray = bundle.getFloatArray(key);
        if (floatArray != null) {
            return floatArray;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getFloatArrayOrNull-impl, reason: not valid java name */
    public static final float[] m713getFloatArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getFloatArray(key);
    }

    @Nullable
    /* renamed from: getFloatOrNull-impl, reason: not valid java name */
    public static final Float m714getFloatOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        float f = bundle.getFloat(key, Float.MIN_VALUE);
        if (f == Float.MIN_VALUE && bundle.getFloat(key, Float.MAX_VALUE) == Float.MAX_VALUE) {
            return null;
        }
        return Float.valueOf(f);
    }

    /* renamed from: getInt-impl, reason: not valid java name */
    public static final int m715getIntimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int i = bundle.getInt(key, Integer.MIN_VALUE);
        if (i == Integer.MIN_VALUE && bundle.getInt(key, Integer.MAX_VALUE) == Integer.MAX_VALUE) {
            throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
        }
        return i;
    }

    @NotNull
    /* renamed from: getIntArray-impl, reason: not valid java name */
    public static final int[] m716getIntArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int[] intArray = bundle.getIntArray(key);
        if (intArray != null) {
            return intArray;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getIntArrayOrNull-impl, reason: not valid java name */
    public static final int[] m717getIntArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getIntArray(key);
    }

    @NotNull
    /* renamed from: getIntList-impl, reason: not valid java name */
    public static final List<Integer> m718getIntListimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(key);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getIntListOrNull-impl, reason: not valid java name */
    public static final List<Integer> m719getIntListOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getIntegerArrayList(key);
    }

    @Nullable
    /* renamed from: getIntOrNull-impl, reason: not valid java name */
    public static final Integer m720getIntOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int i = bundle.getInt(key, Integer.MIN_VALUE);
        if (i == Integer.MIN_VALUE && bundle.getInt(key, Integer.MAX_VALUE) == Integer.MAX_VALUE) {
            return null;
        }
        return Integer.valueOf(i);
    }

    @NotNull
    /* renamed from: getJavaSerializable-impl, reason: not valid java name */
    public static final <T extends Serializable> T m722getJavaSerializableimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> serializableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(serializableClass, "serializableClass");
        T t = (T) BundleCompat.getSerializable(bundle, key, JvmClassMappingKt.getJavaClass((KClass) serializableClass));
        if (t != null) {
            return t;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getJavaSerializableOrNull-impl, reason: not valid java name */
    public static final <T extends Serializable> T m724getJavaSerializableOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> serializableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(serializableClass, "serializableClass");
        return (T) BundleCompat.getSerializable(bundle, key, JvmClassMappingKt.getJavaClass((KClass) serializableClass));
    }

    /* renamed from: getLong-impl, reason: not valid java name */
    public static final long m725getLongimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        long j = bundle.getLong(key, Long.MIN_VALUE);
        if (j == Long.MIN_VALUE && bundle.getLong(key, Long.MAX_VALUE) == Long.MAX_VALUE) {
            throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
        }
        return j;
    }

    @NotNull
    /* renamed from: getLongArray-impl, reason: not valid java name */
    public static final long[] m726getLongArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        long[] longArray = bundle.getLongArray(key);
        if (longArray != null) {
            return longArray;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getLongArrayOrNull-impl, reason: not valid java name */
    public static final long[] m727getLongArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getLongArray(key);
    }

    @Nullable
    /* renamed from: getLongOrNull-impl, reason: not valid java name */
    public static final Long m728getLongOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        long j = bundle.getLong(key, Long.MIN_VALUE);
        if (j == Long.MIN_VALUE && bundle.getLong(key, Long.MAX_VALUE) == Long.MAX_VALUE) {
            return null;
        }
        return Long.valueOf(j);
    }

    @NotNull
    /* renamed from: getParcelable-impl, reason: not valid java name */
    public static final <T extends Parcelable> T m730getParcelableimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        T t = (T) BundleCompat.getParcelable(bundle, key, JvmClassMappingKt.getJavaClass((KClass) parcelableClass));
        if (t != null) {
            return t;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @NotNull
    /* renamed from: getParcelableArray-impl, reason: not valid java name */
    public static final <T extends Parcelable> T[] m732getParcelableArrayimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        T[] tArr = (T[]) m734getParcelableArrayOrNullimpl(bundle, key, parcelableClass);
        if (tArr != null) {
            return tArr;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getParcelableArrayOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> T[] m734getParcelableArrayOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        T[] tArr = (T[]) BundleCompat.getParcelableArray(bundle, key, JvmClassMappingKt.getJavaClass((KClass) parcelableClass));
        if (tArr instanceof Parcelable[]) {
            return tArr;
        }
        return null;
    }

    @NotNull
    /* renamed from: getParcelableList-impl, reason: not valid java name */
    public static final <T extends Parcelable> List<T> m736getParcelableListimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        ArrayList parcelableArrayList = BundleCompat.getParcelableArrayList(bundle, key, JvmClassMappingKt.getJavaClass((KClass) parcelableClass));
        if (parcelableArrayList != null) {
            return parcelableArrayList;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getParcelableListOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> List<T> m738getParcelableListOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        return BundleCompat.getParcelableArrayList(bundle, key, JvmClassMappingKt.getJavaClass((KClass) parcelableClass));
    }

    @Nullable
    /* renamed from: getParcelableOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> T m740getParcelableOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        return (T) BundleCompat.getParcelable(bundle, key, JvmClassMappingKt.getJavaClass((KClass) parcelableClass));
    }

    @NotNull
    /* renamed from: getSavedState-impl, reason: not valid java name */
    public static final Bundle m741getSavedStateimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Bundle bundle2 = bundle.getBundle(key);
        if (bundle2 != null) {
            return bundle2;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @NotNull
    /* renamed from: getSavedStateArray-impl, reason: not valid java name */
    public static final Bundle[] m742getSavedStateArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (Bundle[]) m732getParcelableArrayimpl(bundle, key, Reflection.getOrCreateKotlinClass(Bundle.class));
    }

    @Nullable
    /* renamed from: getSavedStateArrayOrNull-impl, reason: not valid java name */
    public static final Bundle[] m743getSavedStateArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (Bundle[]) m734getParcelableArrayOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Bundle.class));
    }

    @NotNull
    /* renamed from: getSavedStateList-impl, reason: not valid java name */
    public static final List<Bundle> m744getSavedStateListimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return m736getParcelableListimpl(bundle, key, Reflection.getOrCreateKotlinClass(Bundle.class));
    }

    @Nullable
    /* renamed from: getSavedStateListOrNull-impl, reason: not valid java name */
    public static final List<Bundle> m745getSavedStateListOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return m738getParcelableListOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Bundle.class));
    }

    @Nullable
    /* renamed from: getSavedStateOrNull-impl, reason: not valid java name */
    public static final Bundle m746getSavedStateOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getBundle(key);
    }

    @NotNull
    /* renamed from: getSize-impl, reason: not valid java name */
    public static final Size m747getSizeimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Size size = bundle.getSize(key);
        if (size != null) {
            return size;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @NotNull
    /* renamed from: getSizeF-impl, reason: not valid java name */
    public static final SizeF m748getSizeFimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        SizeF sizeF = bundle.getSizeF(key);
        if (sizeF != null) {
            return sizeF;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getSizeFOrNull-impl, reason: not valid java name */
    public static final SizeF m749getSizeFOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getSizeF(key);
    }

    @Nullable
    /* renamed from: getSizeOrNull-impl, reason: not valid java name */
    public static final Size m750getSizeOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getSize(key);
    }

    @NotNull
    /* renamed from: getSparseParcelableArray-impl, reason: not valid java name */
    public static final <T extends Parcelable> SparseArray<T> m752getSparseParcelableArrayimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        SparseArray<T> m754getSparseParcelableArrayOrNullimpl = m754getSparseParcelableArrayOrNullimpl(bundle, key, parcelableClass);
        if (m754getSparseParcelableArrayOrNullimpl != null) {
            return m754getSparseParcelableArrayOrNullimpl;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getSparseParcelableArrayOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> SparseArray<T> m754getSparseParcelableArrayOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        return BundleCompat.getSparseParcelableArray(bundle, key, JvmClassMappingKt.getJavaClass((KClass) parcelableClass));
    }

    @NotNull
    /* renamed from: getString-impl, reason: not valid java name */
    public static final String m755getStringimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String string = bundle.getString(key);
        if (string != null) {
            return string;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @NotNull
    /* renamed from: getStringArray-impl, reason: not valid java name */
    public static final String[] m756getStringArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String[] stringArray = bundle.getStringArray(key);
        if (stringArray != null) {
            return stringArray;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getStringArrayOrNull-impl, reason: not valid java name */
    public static final String[] m757getStringArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getStringArray(key);
    }

    @NotNull
    /* renamed from: getStringList-impl, reason: not valid java name */
    public static final List<String> m758getStringListimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ArrayList<String> stringArrayList = bundle.getStringArrayList(key);
        if (stringArrayList != null) {
            return stringArrayList;
        }
        throw AbstractC0749x8313616e.m3345x2a28ae4e(key);
    }

    @Nullable
    /* renamed from: getStringListOrNull-impl, reason: not valid java name */
    public static final List<String> m759getStringListOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getStringArrayList(key);
    }

    @Nullable
    /* renamed from: getStringOrNull-impl, reason: not valid java name */
    public static final String m760getStringOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getString(key);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m761hashCodeimpl(Bundle bundle) {
        return bundle.hashCode();
    }

    /* renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m762isEmptyimpl(Bundle bundle) {
        return bundle.isEmpty();
    }

    /* renamed from: isNull-impl, reason: not valid java name */
    public static final boolean m763isNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (m685containsimpl(bundle, key) && bundle.get(key) == null) {
            return true;
        }
        return false;
    }

    /* renamed from: size-impl, reason: not valid java name */
    public static final int m764sizeimpl(Bundle bundle) {
        return bundle.size();
    }

    @NotNull
    /* renamed from: toMap-impl, reason: not valid java name */
    public static final Map<String, Object> m765toMapimpl(Bundle bundle) {
        Map createMapBuilder = AbstractC0961xbc4021d9.createMapBuilder(bundle.size());
        for (String str : bundle.keySet()) {
            Intrinsics.checkNotNull(str);
            createMapBuilder.put(str, bundle.get(str));
        }
        return AbstractC0961xbc4021d9.build(createMapBuilder);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m766toStringimpl(Bundle bundle) {
        return "SavedStateReader(source=" + bundle + ')';
    }

    public boolean equals(Object obj) {
        return m689equalsimpl(this.source, obj);
    }

    public int hashCode() {
        return m761hashCodeimpl(this.source);
    }

    public String toString() {
        return m766toStringimpl(this.source);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ Bundle getSource() {
        return this.source;
    }

    /* renamed from: getJavaSerializableOrNull-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Serializable> T m723getJavaSerializableOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) m724getJavaSerializableOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Serializable.class));
    }

    /* renamed from: getParcelableArrayOrNull-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> T[] m733getParcelableArrayOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T[]) m734getParcelableArrayOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getParcelableListOrNull-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> List<T> m737getParcelableListOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return m738getParcelableListOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getParcelableOrNull-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> T m739getParcelableOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) m740getParcelableOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getSparseParcelableArrayOrNull-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> SparseArray<T> m753getSparseParcelableArrayOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return m754getSparseParcelableArrayOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getJavaSerializable-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Serializable> T m721getJavaSerializableimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) m722getJavaSerializableimpl(bundle, key, Reflection.getOrCreateKotlinClass(Serializable.class));
    }

    /* renamed from: getParcelable-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> T m729getParcelableimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) m730getParcelableimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getParcelableArray-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> T[] m731getParcelableArrayimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T[]) m732getParcelableArrayimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getParcelableList-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> List<T> m735getParcelableListimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return m736getParcelableListimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getSparseParcelableArray-impl, reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> SparseArray<T> m751getSparseParcelableArrayimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return m752getSparseParcelableArrayimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }
}
