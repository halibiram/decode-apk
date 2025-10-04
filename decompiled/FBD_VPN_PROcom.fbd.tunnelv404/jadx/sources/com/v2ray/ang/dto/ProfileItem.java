package com.v2ray.ang.dto;

import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\bo\n\u0002\u0010!\n\u0002\b3\b\u0086\b\u0018\u0000 Ä\u00012\u00020\u0001:\u0002Ä\u0001Bó\u0003\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b1\u00102J\u000e\u0010\u0091\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u0092\u0001J\u0007\u0010\u0093\u0001\u001a\u00020\u0007J\u0015\u0010\u0094\u0001\u001a\u00020\"2\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\n\u0010\u0096\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0097\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0007HÆ\u0003J\n\u0010\u0099\u0001\u001a\u00020\tHÆ\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0007HÆ\u0003J\f\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010 \u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¡\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¢\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010£\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¤\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¥\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¦\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010§\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¨\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010©\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010ª\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010«\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¬\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010®\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¯\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010°\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010±\u0001\u001a\u0004\u0018\u00010\"HÆ\u0003¢\u0006\u0002\u0010nJ\f\u0010²\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010³\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010´\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010µ\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¶\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010·\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¸\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0012\u0010¹\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0003\u0010\u0081\u0001J\f\u0010º\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010»\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¼\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010½\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¾\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¿\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003Jþ\u0003\u0010À\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0003\u0010Á\u0001J\n\u0010Â\u0001\u001a\u00020\u0003HÖ\u0001J\n\u0010Ã\u0001\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u00108\"\u0004\b@\u0010:R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u00108\"\u0004\bB\u0010:R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u00108\"\u0004\bD\u0010:R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u00108\"\u0004\bF\u0010:R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u00108\"\u0004\bH\u0010:R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u00108\"\u0004\bJ\u0010:R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u00108\"\u0004\bL\u0010:R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u00108\"\u0004\bN\u0010:R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u00108\"\u0004\bP\u0010:R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u00108\"\u0004\bR\u0010:R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u00108\"\u0004\bT\u0010:R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u00108\"\u0004\bV\u0010:R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u00108\"\u0004\bX\u0010:R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u00108\"\u0004\bZ\u0010:R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u00108\"\u0004\b\\\u0010:R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u00108\"\u0004\b^\u0010:R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u00108\"\u0004\b`\u0010:R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u00108\"\u0004\bb\u0010:R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bc\u00108\"\u0004\bd\u0010:R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\be\u00108\"\u0004\bf\u0010:R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bg\u00108\"\u0004\bh\u0010:R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u00108\"\u0004\bj\u0010:R\u001c\u0010 \u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u00108\"\u0004\bl\u0010:R\u001e\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u0010\n\u0002\u0010q\u001a\u0004\bm\u0010n\"\u0004\bo\u0010pR\u001c\u0010#\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\br\u00108\"\u0004\bs\u0010:R\u001c\u0010$\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bt\u00108\"\u0004\bu\u0010:R\u001c\u0010%\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bv\u00108\"\u0004\bw\u0010:R\u001c\u0010&\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bx\u00108\"\u0004\by\u0010:R\u001c\u0010'\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bz\u00108\"\u0004\b{\u0010:R\u001c\u0010(\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b|\u00108\"\u0004\b}\u0010:R\u001c\u0010)\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b~\u00108\"\u0004\b\u007f\u0010:R#\u0010*\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0015\n\u0003\u0010\u0084\u0001\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001\"\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001e\u0010+\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0085\u0001\u00108\"\u0005\b\u0086\u0001\u0010:R\u001e\u0010,\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0087\u0001\u00108\"\u0005\b\u0088\u0001\u0010:R\u001e\u0010-\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0089\u0001\u00108\"\u0005\b\u008a\u0001\u0010:R\u001e\u0010.\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008b\u0001\u00108\"\u0005\b\u008c\u0001\u0010:R\u001e\u0010/\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008d\u0001\u00108\"\u0005\b\u008e\u0001\u0010:R\u001e\u00100\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008f\u0001\u00108\"\u0005\b\u0090\u0001\u0010:¨\u0006Å\u0001"}, d2 = {"Lcom/v2ray/ang/dto/ProfileItem;", "", "configVersion", "", "configType", "Lcom/v2ray/ang/dto/EConfigType;", "subscriptionId", "", "addedTime", "", "remarks", "server", "serverPort", "password", "method", "flow", "username", "network", "headerType", "host", "path", "seed", "quicSecurity", "quicKey", "mode", "serviceName", "authority", "xhttpMode", "xhttpExtra", "security", "sni", "alpn", "fingerPrint", "insecure", "", "publicKey", "shortId", "spiderX", "secretKey", "preSharedKey", "localAddress", "reserved", "mtu", "obfsPassword", "portHopping", "portHoppingInterval", "pinSHA256", "bandwidthDown", "bandwidthUp", "<init>", "(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getConfigVersion", "()I", "getConfigType", "()Lcom/v2ray/ang/dto/EConfigType;", "getSubscriptionId", "()Ljava/lang/String;", "setSubscriptionId", "(Ljava/lang/String;)V", "getAddedTime", "()J", "setAddedTime", "(J)V", "getRemarks", "setRemarks", "getServer", "setServer", "getServerPort", "setServerPort", "getPassword", "setPassword", "getMethod", "setMethod", "getFlow", "setFlow", "getUsername", "setUsername", "getNetwork", "setNetwork", "getHeaderType", "setHeaderType", "getHost", "setHost", "getPath", "setPath", "getSeed", "setSeed", "getQuicSecurity", "setQuicSecurity", "getQuicKey", "setQuicKey", "getMode", "setMode", "getServiceName", "setServiceName", "getAuthority", "setAuthority", "getXhttpMode", "setXhttpMode", "getXhttpExtra", "setXhttpExtra", "getSecurity", "setSecurity", "getSni", "setSni", "getAlpn", "setAlpn", "getFingerPrint", "setFingerPrint", "getInsecure", "()Ljava/lang/Boolean;", "setInsecure", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getPublicKey", "setPublicKey", "getShortId", "setShortId", "getSpiderX", "setSpiderX", "getSecretKey", "setSecretKey", "getPreSharedKey", "setPreSharedKey", "getLocalAddress", "setLocalAddress", "getReserved", "setReserved", "getMtu", "()Ljava/lang/Integer;", "setMtu", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getObfsPassword", "setObfsPassword", "getPortHopping", "setPortHopping", "getPortHoppingInterval", "setPortHoppingInterval", "getPinSHA256", "setPinSHA256", "getBandwidthDown", "setBandwidthDown", "getBandwidthUp", "setBandwidthUp", "getAllOutboundTags", "", "getServerAddressAndPort", "equals", "other", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component40", "component41", "component42", "copy", "(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;", "hashCode", "toString", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ProfileItem {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private long addedTime;

    @Nullable
    private String alpn;

    @Nullable
    private String authority;

    @Nullable
    private String bandwidthDown;

    @Nullable
    private String bandwidthUp;

    @NotNull
    private final EConfigType configType;
    private final int configVersion;

    @Nullable
    private String fingerPrint;

    @Nullable
    private String flow;

    @Nullable
    private String headerType;

    @Nullable
    private String host;

    @Nullable
    private Boolean insecure;

    @Nullable
    private String localAddress;

    @Nullable
    private String method;

    @Nullable
    private String mode;

    @Nullable
    private Integer mtu;

    @Nullable
    private String network;

    @Nullable
    private String obfsPassword;

    @Nullable
    private String password;

    @Nullable
    private String path;

    @Nullable
    private String pinSHA256;

    @Nullable
    private String portHopping;

    @Nullable
    private String portHoppingInterval;

    @Nullable
    private String preSharedKey;

    @Nullable
    private String publicKey;

    @Nullable
    private String quicKey;

    @Nullable
    private String quicSecurity;

    @NotNull
    private String remarks;

    @Nullable
    private String reserved;

    @Nullable
    private String secretKey;

    @Nullable
    private String security;

    @Nullable
    private String seed;

    @Nullable
    private String server;

    @Nullable
    private String serverPort;

    @Nullable
    private String serviceName;

    @Nullable
    private String shortId;

    @Nullable
    private String sni;

    @Nullable
    private String spiderX;

    @NotNull
    private String subscriptionId;

    @Nullable
    private String username;

    @Nullable
    private String xhttpExtra;

    @Nullable
    private String xhttpMode;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/v2ray/ang/dto/ProfileItem$Companion;", "", "<init>", "()V", "create", "Lcom/v2ray/ang/dto/ProfileItem;", "configType", "Lcom/v2ray/ang/dto/EConfigType;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ProfileItem create(@NotNull EConfigType configType) {
            Intrinsics.checkNotNullParameter(configType, new ObfuscatedString(new long[]{-7997009721146335435L, 2858446850438482676L, 3454816321365632835L}).toString());
            return new ProfileItem(0, configType, null, 0L, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -3, 1023, null);
        }

        private Companion() {
        }
    }

    public ProfileItem(int i, @NotNull EConfigType eConfigType, @NotNull String str, long j, @NotNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable String str17, @Nullable String str18, @Nullable String str19, @Nullable String str20, @Nullable String str21, @Nullable String str22, @Nullable String str23, @Nullable String str24, @Nullable Boolean bool, @Nullable String str25, @Nullable String str26, @Nullable String str27, @Nullable String str28, @Nullable String str29, @Nullable String str30, @Nullable String str31, @Nullable Integer num, @Nullable String str32, @Nullable String str33, @Nullable String str34, @Nullable String str35, @Nullable String str36, @Nullable String str37) {
        Intrinsics.checkNotNullParameter(eConfigType, new ObfuscatedString(new long[]{8993666915955144052L, -704266919336174810L, 6516881673033766844L}).toString());
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{3239826341827800680L, 2506489285960856801L, 8503817497708529052L}).toString());
        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{-3096826083906622962L, -355813026571504780L}).toString());
        this.configVersion = i;
        this.configType = eConfigType;
        this.subscriptionId = str;
        this.addedTime = j;
        this.remarks = str2;
        this.server = str3;
        this.serverPort = str4;
        this.password = str5;
        this.method = str6;
        this.flow = str7;
        this.username = str8;
        this.network = str9;
        this.headerType = str10;
        this.host = str11;
        this.path = str12;
        this.seed = str13;
        this.quicSecurity = str14;
        this.quicKey = str15;
        this.mode = str16;
        this.serviceName = str17;
        this.authority = str18;
        this.xhttpMode = str19;
        this.xhttpExtra = str20;
        this.security = str21;
        this.sni = str22;
        this.alpn = str23;
        this.fingerPrint = str24;
        this.insecure = bool;
        this.publicKey = str25;
        this.shortId = str26;
        this.spiderX = str27;
        this.secretKey = str28;
        this.preSharedKey = str29;
        this.localAddress = str30;
        this.reserved = str31;
        this.mtu = num;
        this.obfsPassword = str32;
        this.portHopping = str33;
        this.portHoppingInterval = str34;
        this.pinSHA256 = str35;
        this.bandwidthDown = str36;
        this.bandwidthUp = str37;
    }

    /* renamed from: component1, reason: from getter */
    public final int getConfigVersion() {
        return this.configVersion;
    }

    @Nullable
    /* renamed from: component10, reason: from getter */
    public final String getFlow() {
        return this.flow;
    }

    @Nullable
    /* renamed from: component11, reason: from getter */
    public final String getUsername() {
        return this.username;
    }

    @Nullable
    /* renamed from: component12, reason: from getter */
    public final String getNetwork() {
        return this.network;
    }

    @Nullable
    /* renamed from: component13, reason: from getter */
    public final String getHeaderType() {
        return this.headerType;
    }

    @Nullable
    /* renamed from: component14, reason: from getter */
    public final String getHost() {
        return this.host;
    }

    @Nullable
    /* renamed from: component15, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    @Nullable
    /* renamed from: component16, reason: from getter */
    public final String getSeed() {
        return this.seed;
    }

    @Nullable
    /* renamed from: component17, reason: from getter */
    public final String getQuicSecurity() {
        return this.quicSecurity;
    }

    @Nullable
    /* renamed from: component18, reason: from getter */
    public final String getQuicKey() {
        return this.quicKey;
    }

    @Nullable
    /* renamed from: component19, reason: from getter */
    public final String getMode() {
        return this.mode;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final EConfigType getConfigType() {
        return this.configType;
    }

    @Nullable
    /* renamed from: component20, reason: from getter */
    public final String getServiceName() {
        return this.serviceName;
    }

    @Nullable
    /* renamed from: component21, reason: from getter */
    public final String getAuthority() {
        return this.authority;
    }

    @Nullable
    /* renamed from: component22, reason: from getter */
    public final String getXhttpMode() {
        return this.xhttpMode;
    }

    @Nullable
    /* renamed from: component23, reason: from getter */
    public final String getXhttpExtra() {
        return this.xhttpExtra;
    }

    @Nullable
    /* renamed from: component24, reason: from getter */
    public final String getSecurity() {
        return this.security;
    }

    @Nullable
    /* renamed from: component25, reason: from getter */
    public final String getSni() {
        return this.sni;
    }

    @Nullable
    /* renamed from: component26, reason: from getter */
    public final String getAlpn() {
        return this.alpn;
    }

    @Nullable
    /* renamed from: component27, reason: from getter */
    public final String getFingerPrint() {
        return this.fingerPrint;
    }

    @Nullable
    /* renamed from: component28, reason: from getter */
    public final Boolean getInsecure() {
        return this.insecure;
    }

    @Nullable
    /* renamed from: component29, reason: from getter */
    public final String getPublicKey() {
        return this.publicKey;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    @Nullable
    /* renamed from: component30, reason: from getter */
    public final String getShortId() {
        return this.shortId;
    }

    @Nullable
    /* renamed from: component31, reason: from getter */
    public final String getSpiderX() {
        return this.spiderX;
    }

    @Nullable
    /* renamed from: component32, reason: from getter */
    public final String getSecretKey() {
        return this.secretKey;
    }

    @Nullable
    /* renamed from: component33, reason: from getter */
    public final String getPreSharedKey() {
        return this.preSharedKey;
    }

    @Nullable
    /* renamed from: component34, reason: from getter */
    public final String getLocalAddress() {
        return this.localAddress;
    }

    @Nullable
    /* renamed from: component35, reason: from getter */
    public final String getReserved() {
        return this.reserved;
    }

    @Nullable
    /* renamed from: component36, reason: from getter */
    public final Integer getMtu() {
        return this.mtu;
    }

    @Nullable
    /* renamed from: component37, reason: from getter */
    public final String getObfsPassword() {
        return this.obfsPassword;
    }

    @Nullable
    /* renamed from: component38, reason: from getter */
    public final String getPortHopping() {
        return this.portHopping;
    }

    @Nullable
    /* renamed from: component39, reason: from getter */
    public final String getPortHoppingInterval() {
        return this.portHoppingInterval;
    }

    /* renamed from: component4, reason: from getter */
    public final long getAddedTime() {
        return this.addedTime;
    }

    @Nullable
    /* renamed from: component40, reason: from getter */
    public final String getPinSHA256() {
        return this.pinSHA256;
    }

    @Nullable
    /* renamed from: component41, reason: from getter */
    public final String getBandwidthDown() {
        return this.bandwidthDown;
    }

    @Nullable
    /* renamed from: component42, reason: from getter */
    public final String getBandwidthUp() {
        return this.bandwidthUp;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getRemarks() {
        return this.remarks;
    }

    @Nullable
    /* renamed from: component6, reason: from getter */
    public final String getServer() {
        return this.server;
    }

    @Nullable
    /* renamed from: component7, reason: from getter */
    public final String getServerPort() {
        return this.serverPort;
    }

    @Nullable
    /* renamed from: component8, reason: from getter */
    public final String getPassword() {
        return this.password;
    }

    @Nullable
    /* renamed from: component9, reason: from getter */
    public final String getMethod() {
        return this.method;
    }

    @NotNull
    public final ProfileItem copy(int configVersion, @NotNull EConfigType configType, @NotNull String subscriptionId, long addedTime, @NotNull String remarks, @Nullable String server, @Nullable String serverPort, @Nullable String password, @Nullable String method, @Nullable String flow, @Nullable String username, @Nullable String network, @Nullable String headerType, @Nullable String host, @Nullable String path, @Nullable String seed, @Nullable String quicSecurity, @Nullable String quicKey, @Nullable String mode, @Nullable String serviceName, @Nullable String authority, @Nullable String xhttpMode, @Nullable String xhttpExtra, @Nullable String security, @Nullable String sni, @Nullable String alpn, @Nullable String fingerPrint, @Nullable Boolean insecure, @Nullable String publicKey, @Nullable String shortId, @Nullable String spiderX, @Nullable String secretKey, @Nullable String preSharedKey, @Nullable String localAddress, @Nullable String reserved, @Nullable Integer mtu, @Nullable String obfsPassword, @Nullable String portHopping, @Nullable String portHoppingInterval, @Nullable String pinSHA256, @Nullable String bandwidthDown, @Nullable String bandwidthUp) {
        Intrinsics.checkNotNullParameter(configType, new ObfuscatedString(new long[]{3547809174995898072L, -1714131481587403784L, 616519463874792094L}).toString());
        Intrinsics.checkNotNullParameter(subscriptionId, new ObfuscatedString(new long[]{4938114593271249372L, 3551059774338826190L, -2705881859366320065L}).toString());
        Intrinsics.checkNotNullParameter(remarks, new ObfuscatedString(new long[]{-8382901968125652715L, -1633942876911186139L}).toString());
        return new ProfileItem(configVersion, configType, subscriptionId, addedTime, remarks, server, serverPort, password, method, flow, username, network, headerType, host, path, seed, quicSecurity, quicKey, mode, serviceName, authority, xhttpMode, xhttpExtra, security, sni, alpn, fingerPrint, insecure, publicKey, shortId, spiderX, secretKey, preSharedKey, localAddress, reserved, mtu, obfsPassword, portHopping, portHoppingInterval, pinSHA256, bandwidthDown, bandwidthUp);
    }

    public boolean equals(@Nullable Object other) {
        if (other == null) {
            return false;
        }
        ProfileItem profileItem = (ProfileItem) other;
        if (!Intrinsics.areEqual(this.server, profileItem.server) || !Intrinsics.areEqual(this.serverPort, profileItem.serverPort) || !Intrinsics.areEqual(this.password, profileItem.password) || !Intrinsics.areEqual(this.method, profileItem.method) || !Intrinsics.areEqual(this.flow, profileItem.flow) || !Intrinsics.areEqual(this.username, profileItem.username) || !Intrinsics.areEqual(this.network, profileItem.network) || !Intrinsics.areEqual(this.headerType, profileItem.headerType) || !Intrinsics.areEqual(this.host, profileItem.host) || !Intrinsics.areEqual(this.path, profileItem.path) || !Intrinsics.areEqual(this.seed, profileItem.seed) || !Intrinsics.areEqual(this.quicSecurity, profileItem.quicSecurity) || !Intrinsics.areEqual(this.quicKey, profileItem.quicKey) || !Intrinsics.areEqual(this.mode, profileItem.mode) || !Intrinsics.areEqual(this.serviceName, profileItem.serviceName) || !Intrinsics.areEqual(this.authority, profileItem.authority) || !Intrinsics.areEqual(this.xhttpMode, profileItem.xhttpMode) || !Intrinsics.areEqual(this.security, profileItem.security) || !Intrinsics.areEqual(this.sni, profileItem.sni) || !Intrinsics.areEqual(this.alpn, profileItem.alpn) || !Intrinsics.areEqual(this.fingerPrint, profileItem.fingerPrint) || !Intrinsics.areEqual(this.publicKey, profileItem.publicKey) || !Intrinsics.areEqual(this.shortId, profileItem.shortId) || !Intrinsics.areEqual(this.secretKey, profileItem.secretKey) || !Intrinsics.areEqual(this.localAddress, profileItem.localAddress) || !Intrinsics.areEqual(this.reserved, profileItem.reserved) || !Intrinsics.areEqual(this.mtu, profileItem.mtu) || !Intrinsics.areEqual(this.obfsPassword, profileItem.obfsPassword) || !Intrinsics.areEqual(this.portHopping, profileItem.portHopping) || !Intrinsics.areEqual(this.portHoppingInterval, profileItem.portHoppingInterval) || !Intrinsics.areEqual(this.pinSHA256, profileItem.pinSHA256)) {
            return false;
        }
        return true;
    }

    public final long getAddedTime() {
        return this.addedTime;
    }

    @NotNull
    public final List<String> getAllOutboundTags() {
        return CollectionsKt__CollectionsKt.mutableListOf(new ObfuscatedString(new long[]{1284945929130855849L, 4574175602538961710L}).toString(), new ObfuscatedString(new long[]{6078334686767724216L, -7669356191955066544L}).toString(), new ObfuscatedString(new long[]{-2540430661695453844L, 480085109306686317L}).toString());
    }

    @Nullable
    public final String getAlpn() {
        return this.alpn;
    }

    @Nullable
    public final String getAuthority() {
        return this.authority;
    }

    @Nullable
    public final String getBandwidthDown() {
        return this.bandwidthDown;
    }

    @Nullable
    public final String getBandwidthUp() {
        return this.bandwidthUp;
    }

    @NotNull
    public final EConfigType getConfigType() {
        return this.configType;
    }

    public final int getConfigVersion() {
        return this.configVersion;
    }

    @Nullable
    public final String getFingerPrint() {
        return this.fingerPrint;
    }

    @Nullable
    public final String getFlow() {
        return this.flow;
    }

    @Nullable
    public final String getHeaderType() {
        return this.headerType;
    }

    @Nullable
    public final String getHost() {
        return this.host;
    }

    @Nullable
    public final Boolean getInsecure() {
        return this.insecure;
    }

    @Nullable
    public final String getLocalAddress() {
        return this.localAddress;
    }

    @Nullable
    public final String getMethod() {
        return this.method;
    }

    @Nullable
    public final String getMode() {
        return this.mode;
    }

    @Nullable
    public final Integer getMtu() {
        return this.mtu;
    }

    @Nullable
    public final String getNetwork() {
        return this.network;
    }

    @Nullable
    public final String getObfsPassword() {
        return this.obfsPassword;
    }

    @Nullable
    public final String getPassword() {
        return this.password;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    @Nullable
    public final String getPinSHA256() {
        return this.pinSHA256;
    }

    @Nullable
    public final String getPortHopping() {
        return this.portHopping;
    }

    @Nullable
    public final String getPortHoppingInterval() {
        return this.portHoppingInterval;
    }

    @Nullable
    public final String getPreSharedKey() {
        return this.preSharedKey;
    }

    @Nullable
    public final String getPublicKey() {
        return this.publicKey;
    }

    @Nullable
    public final String getQuicKey() {
        return this.quicKey;
    }

    @Nullable
    public final String getQuicSecurity() {
        return this.quicSecurity;
    }

    @NotNull
    public final String getRemarks() {
        return this.remarks;
    }

    @Nullable
    public final String getReserved() {
        return this.reserved;
    }

    @Nullable
    public final String getSecretKey() {
        return this.secretKey;
    }

    @Nullable
    public final String getSecurity() {
        return this.security;
    }

    @Nullable
    public final String getSeed() {
        return this.seed;
    }

    @Nullable
    public final String getServer() {
        return this.server;
    }

    @NotNull
    public final String getServerAddressAndPort() {
        String str = this.server;
        if ((str == null || str.length() == 0) && this.configType == EConfigType.CUSTOM) {
            return new ObfuscatedString(new long[]{9177507097958047987L, -7546827012117338900L, 7737946808205850337L}).toString();
        }
        return AbstractC0362x4440ab85.m2953x742e2fda(Utils.INSTANCE.getIpv6Address(this.server), ":", this.serverPort);
    }

    @Nullable
    public final String getServerPort() {
        return this.serverPort;
    }

    @Nullable
    public final String getServiceName() {
        return this.serviceName;
    }

    @Nullable
    public final String getShortId() {
        return this.shortId;
    }

    @Nullable
    public final String getSni() {
        return this.sni;
    }

    @Nullable
    public final String getSpiderX() {
        return this.spiderX;
    }

    @NotNull
    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    @Nullable
    public final String getUsername() {
        return this.username;
    }

    @Nullable
    public final String getXhttpExtra() {
        return this.xhttpExtra;
    }

    @Nullable
    public final String getXhttpMode() {
        return this.xhttpMode;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9;
        int hashCode10;
        int hashCode11;
        int hashCode12;
        int hashCode13;
        int hashCode14;
        int hashCode15;
        int hashCode16;
        int hashCode17;
        int hashCode18;
        int hashCode19;
        int hashCode20;
        int hashCode21;
        int hashCode22;
        int hashCode23;
        int hashCode24;
        int hashCode25;
        int hashCode26;
        int hashCode27;
        int hashCode28;
        int hashCode29;
        int hashCode30;
        int hashCode31;
        int hashCode32;
        int hashCode33;
        int hashCode34;
        int hashCode35;
        int hashCode36;
        int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b((this.configType.hashCode() + (this.configVersion * 31)) * 31, 31, this.subscriptionId);
        long j = this.addedTime;
        int m2927x1378447b2 = AbstractC0362x4440ab85.m2927x1378447b((m2927x1378447b + ((int) (j ^ (j >>> 32)))) * 31, 31, this.remarks);
        String str = this.server;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (m2927x1378447b2 + hashCode) * 31;
        String str2 = this.serverPort;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        String str3 = this.password;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        String str4 = this.method;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        String str5 = this.flow;
        if (str5 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str5.hashCode();
        }
        int i6 = (i5 + hashCode5) * 31;
        String str6 = this.username;
        if (str6 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str6.hashCode();
        }
        int i7 = (i6 + hashCode6) * 31;
        String str7 = this.network;
        if (str7 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str7.hashCode();
        }
        int i8 = (i7 + hashCode7) * 31;
        String str8 = this.headerType;
        if (str8 == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = str8.hashCode();
        }
        int i9 = (i8 + hashCode8) * 31;
        String str9 = this.host;
        if (str9 == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = str9.hashCode();
        }
        int i10 = (i9 + hashCode9) * 31;
        String str10 = this.path;
        if (str10 == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = str10.hashCode();
        }
        int i11 = (i10 + hashCode10) * 31;
        String str11 = this.seed;
        if (str11 == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = str11.hashCode();
        }
        int i12 = (i11 + hashCode11) * 31;
        String str12 = this.quicSecurity;
        if (str12 == null) {
            hashCode12 = 0;
        } else {
            hashCode12 = str12.hashCode();
        }
        int i13 = (i12 + hashCode12) * 31;
        String str13 = this.quicKey;
        if (str13 == null) {
            hashCode13 = 0;
        } else {
            hashCode13 = str13.hashCode();
        }
        int i14 = (i13 + hashCode13) * 31;
        String str14 = this.mode;
        if (str14 == null) {
            hashCode14 = 0;
        } else {
            hashCode14 = str14.hashCode();
        }
        int i15 = (i14 + hashCode14) * 31;
        String str15 = this.serviceName;
        if (str15 == null) {
            hashCode15 = 0;
        } else {
            hashCode15 = str15.hashCode();
        }
        int i16 = (i15 + hashCode15) * 31;
        String str16 = this.authority;
        if (str16 == null) {
            hashCode16 = 0;
        } else {
            hashCode16 = str16.hashCode();
        }
        int i17 = (i16 + hashCode16) * 31;
        String str17 = this.xhttpMode;
        if (str17 == null) {
            hashCode17 = 0;
        } else {
            hashCode17 = str17.hashCode();
        }
        int i18 = (i17 + hashCode17) * 31;
        String str18 = this.xhttpExtra;
        if (str18 == null) {
            hashCode18 = 0;
        } else {
            hashCode18 = str18.hashCode();
        }
        int i19 = (i18 + hashCode18) * 31;
        String str19 = this.security;
        if (str19 == null) {
            hashCode19 = 0;
        } else {
            hashCode19 = str19.hashCode();
        }
        int i20 = (i19 + hashCode19) * 31;
        String str20 = this.sni;
        if (str20 == null) {
            hashCode20 = 0;
        } else {
            hashCode20 = str20.hashCode();
        }
        int i21 = (i20 + hashCode20) * 31;
        String str21 = this.alpn;
        if (str21 == null) {
            hashCode21 = 0;
        } else {
            hashCode21 = str21.hashCode();
        }
        int i22 = (i21 + hashCode21) * 31;
        String str22 = this.fingerPrint;
        if (str22 == null) {
            hashCode22 = 0;
        } else {
            hashCode22 = str22.hashCode();
        }
        int i23 = (i22 + hashCode22) * 31;
        Boolean bool = this.insecure;
        if (bool == null) {
            hashCode23 = 0;
        } else {
            hashCode23 = bool.hashCode();
        }
        int i24 = (i23 + hashCode23) * 31;
        String str23 = this.publicKey;
        if (str23 == null) {
            hashCode24 = 0;
        } else {
            hashCode24 = str23.hashCode();
        }
        int i25 = (i24 + hashCode24) * 31;
        String str24 = this.shortId;
        if (str24 == null) {
            hashCode25 = 0;
        } else {
            hashCode25 = str24.hashCode();
        }
        int i26 = (i25 + hashCode25) * 31;
        String str25 = this.spiderX;
        if (str25 == null) {
            hashCode26 = 0;
        } else {
            hashCode26 = str25.hashCode();
        }
        int i27 = (i26 + hashCode26) * 31;
        String str26 = this.secretKey;
        if (str26 == null) {
            hashCode27 = 0;
        } else {
            hashCode27 = str26.hashCode();
        }
        int i28 = (i27 + hashCode27) * 31;
        String str27 = this.preSharedKey;
        if (str27 == null) {
            hashCode28 = 0;
        } else {
            hashCode28 = str27.hashCode();
        }
        int i29 = (i28 + hashCode28) * 31;
        String str28 = this.localAddress;
        if (str28 == null) {
            hashCode29 = 0;
        } else {
            hashCode29 = str28.hashCode();
        }
        int i30 = (i29 + hashCode29) * 31;
        String str29 = this.reserved;
        if (str29 == null) {
            hashCode30 = 0;
        } else {
            hashCode30 = str29.hashCode();
        }
        int i31 = (i30 + hashCode30) * 31;
        Integer num = this.mtu;
        if (num == null) {
            hashCode31 = 0;
        } else {
            hashCode31 = num.hashCode();
        }
        int i32 = (i31 + hashCode31) * 31;
        String str30 = this.obfsPassword;
        if (str30 == null) {
            hashCode32 = 0;
        } else {
            hashCode32 = str30.hashCode();
        }
        int i33 = (i32 + hashCode32) * 31;
        String str31 = this.portHopping;
        if (str31 == null) {
            hashCode33 = 0;
        } else {
            hashCode33 = str31.hashCode();
        }
        int i34 = (i33 + hashCode33) * 31;
        String str32 = this.portHoppingInterval;
        if (str32 == null) {
            hashCode34 = 0;
        } else {
            hashCode34 = str32.hashCode();
        }
        int i35 = (i34 + hashCode34) * 31;
        String str33 = this.pinSHA256;
        if (str33 == null) {
            hashCode35 = 0;
        } else {
            hashCode35 = str33.hashCode();
        }
        int i36 = (i35 + hashCode35) * 31;
        String str34 = this.bandwidthDown;
        if (str34 == null) {
            hashCode36 = 0;
        } else {
            hashCode36 = str34.hashCode();
        }
        int i37 = (i36 + hashCode36) * 31;
        String str35 = this.bandwidthUp;
        if (str35 != null) {
            i = str35.hashCode();
        }
        return i37 + i;
    }

    public final void setAddedTime(long j) {
        this.addedTime = j;
    }

    public final void setAlpn(@Nullable String str) {
        this.alpn = str;
    }

    public final void setAuthority(@Nullable String str) {
        this.authority = str;
    }

    public final void setBandwidthDown(@Nullable String str) {
        this.bandwidthDown = str;
    }

    public final void setBandwidthUp(@Nullable String str) {
        this.bandwidthUp = str;
    }

    public final void setFingerPrint(@Nullable String str) {
        this.fingerPrint = str;
    }

    public final void setFlow(@Nullable String str) {
        this.flow = str;
    }

    public final void setHeaderType(@Nullable String str) {
        this.headerType = str;
    }

    public final void setHost(@Nullable String str) {
        this.host = str;
    }

    public final void setInsecure(@Nullable Boolean bool) {
        this.insecure = bool;
    }

    public final void setLocalAddress(@Nullable String str) {
        this.localAddress = str;
    }

    public final void setMethod(@Nullable String str) {
        this.method = str;
    }

    public final void setMode(@Nullable String str) {
        this.mode = str;
    }

    public final void setMtu(@Nullable Integer num) {
        this.mtu = num;
    }

    public final void setNetwork(@Nullable String str) {
        this.network = str;
    }

    public final void setObfsPassword(@Nullable String str) {
        this.obfsPassword = str;
    }

    public final void setPassword(@Nullable String str) {
        this.password = str;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public final void setPinSHA256(@Nullable String str) {
        this.pinSHA256 = str;
    }

    public final void setPortHopping(@Nullable String str) {
        this.portHopping = str;
    }

    public final void setPortHoppingInterval(@Nullable String str) {
        this.portHoppingInterval = str;
    }

    public final void setPreSharedKey(@Nullable String str) {
        this.preSharedKey = str;
    }

    public final void setPublicKey(@Nullable String str) {
        this.publicKey = str;
    }

    public final void setQuicKey(@Nullable String str) {
        this.quicKey = str;
    }

    public final void setQuicSecurity(@Nullable String str) {
        this.quicSecurity = str;
    }

    public final void setRemarks(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-228705346792189922L, 5936389956363685755L}).toString());
        this.remarks = str;
    }

    public final void setReserved(@Nullable String str) {
        this.reserved = str;
    }

    public final void setSecretKey(@Nullable String str) {
        this.secretKey = str;
    }

    public final void setSecurity(@Nullable String str) {
        this.security = str;
    }

    public final void setSeed(@Nullable String str) {
        this.seed = str;
    }

    public final void setServer(@Nullable String str) {
        this.server = str;
    }

    public final void setServerPort(@Nullable String str) {
        this.serverPort = str;
    }

    public final void setServiceName(@Nullable String str) {
        this.serviceName = str;
    }

    public final void setShortId(@Nullable String str) {
        this.shortId = str;
    }

    public final void setSni(@Nullable String str) {
        this.sni = str;
    }

    public final void setSpiderX(@Nullable String str) {
        this.spiderX = str;
    }

    public final void setSubscriptionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{551523455410979230L, 5323776799576933851L}).toString());
        this.subscriptionId = str;
    }

    public final void setUsername(@Nullable String str) {
        this.username = str;
    }

    public final void setXhttpExtra(@Nullable String str) {
        this.xhttpExtra = str;
    }

    public final void setXhttpMode(@Nullable String str) {
        this.xhttpMode = str;
    }

    @NotNull
    public String toString() {
        int i = this.configVersion;
        EConfigType eConfigType = this.configType;
        String str = this.subscriptionId;
        long j = this.addedTime;
        String str2 = this.remarks;
        String str3 = this.server;
        String str4 = this.serverPort;
        String str5 = this.password;
        String str6 = this.method;
        String str7 = this.flow;
        String str8 = this.username;
        String str9 = this.network;
        String str10 = this.headerType;
        String str11 = this.host;
        String str12 = this.path;
        String str13 = this.seed;
        String str14 = this.quicSecurity;
        String str15 = this.quicKey;
        String str16 = this.mode;
        String str17 = this.serviceName;
        String str18 = this.authority;
        String str19 = this.xhttpMode;
        String str20 = this.xhttpExtra;
        String str21 = this.security;
        String str22 = this.sni;
        String str23 = this.alpn;
        String str24 = this.fingerPrint;
        Boolean bool = this.insecure;
        String str25 = this.publicKey;
        String str26 = this.shortId;
        String str27 = this.spiderX;
        String str28 = this.secretKey;
        String str29 = this.preSharedKey;
        String str30 = this.localAddress;
        String str31 = this.reserved;
        Integer num = this.mtu;
        String str32 = this.obfsPassword;
        String str33 = this.portHopping;
        String str34 = this.portHoppingInterval;
        String str35 = this.pinSHA256;
        String str36 = this.bandwidthDown;
        String str37 = this.bandwidthUp;
        StringBuilder sb = new StringBuilder("ProfileItem(configVersion=");
        sb.append(i);
        sb.append(", configType=");
        sb.append(eConfigType);
        sb.append(", subscriptionId=");
        sb.append(str);
        sb.append(", addedTime=");
        sb.append(j);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", remarks=", str2, ", server=", str3);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", serverPort=", str4, ", password=", str5);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", method=", str6, ", flow=", str7);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", username=", str8, ", network=", str9);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", headerType=", str10, ", host=", str11);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", path=", str12, ", seed=", str13);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", quicSecurity=", str14, ", quicKey=", str15);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", mode=", str16, ", serviceName=", str17);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", authority=", str18, ", xhttpMode=", str19);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", xhttpExtra=", str20, ", security=", str21);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", sni=", str22, ", alpn=", str23);
        sb.append(", fingerPrint=");
        sb.append(str24);
        sb.append(", insecure=");
        sb.append(bool);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", publicKey=", str25, ", shortId=", str26);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", spiderX=", str27, ", secretKey=", str28);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", preSharedKey=", str29, ", localAddress=", str30);
        sb.append(", reserved=");
        sb.append(str31);
        sb.append(", mtu=");
        sb.append(num);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", obfsPassword=", str32, ", portHopping=", str33);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", portHoppingInterval=", str34, ", pinSHA256=", str35);
        AbstractC0749x8313616e.m3350x5ac5058d(sb, ", bandwidthDown=", str36, ", bandwidthUp=", str37);
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ ProfileItem(int i, EConfigType eConfigType, String str, long j, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, Boolean bool, String str25, String str26, String str27, String str28, String str29, String str30, String str31, Integer num, String str32, String str33, String str34, String str35, String str36, String str37, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(r5, eConfigType, r6, r7, r2, r9, r11, r12, r13, r14, r15, r10, r3, r17, r4, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r84, r16, r34, r35, r36, r37, r38, r39, (i3 & 128) != 0 ? null : str35, (i3 & 256) != 0 ? null : str36, (i3 & 512) != 0 ? null : str37);
        String str38;
        String str39;
        int i4 = (i2 & 1) != 0 ? 4 : i;
        String obfuscatedString = (i2 & 4) != 0 ? new ObfuscatedString(new long[]{-1928304545593717941L}).toString() : str;
        long currentTimeMillis = (i2 & 8) != 0 ? System.currentTimeMillis() : j;
        String obfuscatedString2 = (i2 & 16) != 0 ? new ObfuscatedString(new long[]{4304691058193487380L}).toString() : str2;
        String str40 = (i2 & 32) != 0 ? null : str3;
        String str41 = (i2 & 64) != 0 ? null : str4;
        String str42 = (i2 & 128) != 0 ? null : str5;
        String str43 = (i2 & 256) != 0 ? null : str6;
        String str44 = (i2 & 512) != 0 ? null : str7;
        String str45 = (i2 & 1024) != 0 ? null : str8;
        String str46 = (i2 & 2048) != 0 ? null : str9;
        String str47 = (i2 & 4096) != 0 ? null : str10;
        String str48 = (i2 & 8192) != 0 ? null : str11;
        String str49 = (i2 & 16384) != 0 ? null : str12;
        String str50 = (i2 & 32768) != 0 ? null : str13;
        String str51 = (i2 & 65536) != 0 ? null : str14;
        String str52 = (i2 & 131072) != 0 ? null : str15;
        String str53 = (i2 & 262144) != 0 ? null : str16;
        String str54 = (i2 & 524288) != 0 ? null : str17;
        String str55 = (i2 & 1048576) != 0 ? null : str18;
        String str56 = (i2 & 2097152) != 0 ? null : str19;
        String str57 = (i2 & 4194304) != 0 ? null : str20;
        String str58 = (i2 & 8388608) != 0 ? null : str21;
        String str59 = (i2 & 16777216) != 0 ? null : str22;
        String str60 = (i2 & 33554432) != 0 ? null : str23;
        String str61 = (i2 & AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL) != 0 ? null : str24;
        Boolean bool2 = (i2 & 134217728) != 0 ? null : bool;
        String str62 = (i2 & 268435456) != 0 ? null : str25;
        String str63 = (i2 & 536870912) != 0 ? null : str26;
        String str64 = (i2 & 1073741824) != 0 ? null : str27;
        String str65 = (i2 & Integer.MIN_VALUE) != 0 ? null : str28;
        String str66 = (i3 & 1) != 0 ? null : str29;
        String str67 = (i3 & 2) != 0 ? null : str30;
        String str68 = (i3 & 4) != 0 ? null : str31;
        Integer num2 = (i3 & 8) != 0 ? null : num;
        String str69 = (i3 & 16) != 0 ? null : str32;
        String str70 = (i3 & 32) != 0 ? null : str33;
        if ((i3 & 64) != 0) {
            str39 = str65;
            str38 = null;
        } else {
            str38 = str34;
            str39 = str65;
        }
    }
}
