package com.v2ray.ang.plugin;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.AngApplication;
import defpackage.AbstractC0587xb7546d05;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/v2ray/ang/plugin/PluginList;", "Ljava/util/ArrayList;", "Lcom/v2ray/ang/plugin/Plugin;", "Lkotlin/collections/ArrayList;", "<init>", "()V", "lookup", "", "", "getLookup", "()Ljava/util/Map;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginList.kt\ncom/v2ray/ang/plugin/PluginList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n774#2:56\n865#2,2:57\n1563#2:59\n1634#2,3:60\n*S KotlinDebug\n*F\n+ 1 PluginList.kt\ncom/v2ray/ang/plugin/PluginList\n*L\n34#1:56\n34#1:57,2\n34#1:59\n34#1:60,3\n*E\n"})
/* loaded from: classes3.dex */
public final class PluginList extends ArrayList<Plugin> {

    @NotNull
    private final Map<String, Plugin> lookup;

    public PluginList() {
        List<ResolveInfo> queryIntentContentProviders = AngApplication.INSTANCE.getApplication().getPackageManager().queryIntentContentProviders(new Intent(new ObfuscatedString(new long[]{-7867212525418031010L, 2197670893223306376L, -8858635400188372061L, -4271126870992621194L, -7819939101904817348L, -5611757856880179919L, -3592389583604735484L, 4623685768232986921L}).toString()), 128);
        Intrinsics.checkNotNullExpressionValue(queryIntentContentProviders, new ObfuscatedString(new long[]{-8837876922357814801L, 4519989525486918413L, -2984209782703066067L, -850758384118262910L, 6658972611334278639L}).toString());
        ArrayList<ResolveInfo> arrayList = new ArrayList();
        for (Object obj : queryIntentContentProviders) {
            if (((ResolveInfo) obj).providerInfo.exported) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(arrayList, 10));
        for (ResolveInfo resolveInfo : arrayList) {
            Intrinsics.checkNotNull(resolveInfo);
            arrayList2.add(new NativePlugin(resolveInfo));
        }
        addAll(arrayList2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Plugin plugin : CollectionsKt___CollectionsKt.toList(this)) {
            lookup$lambda$2$check(plugin, this, (Plugin) linkedHashMap.put(plugin.getId(), plugin));
        }
        this.lookup = linkedHashMap;
    }

    private static final void lookup$lambda$2$check(Plugin plugin, PluginList pluginList, Plugin plugin2) {
        if (plugin2 != null && !Intrinsics.areEqual(plugin2, plugin)) {
            pluginList.remove((Object) plugin2);
        }
    }

    public /* bridge */ boolean contains(Plugin plugin) {
        return super.contains((Object) plugin);
    }

    @NotNull
    public final Map<String, Plugin> getLookup() {
        return this.lookup;
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ int indexOf(Plugin plugin) {
        return super.indexOf((Object) plugin);
    }

    public /* bridge */ int lastIndexOf(Plugin plugin) {
        return super.lastIndexOf((Object) plugin);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ Plugin remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ Plugin removeAt(int i) {
        return remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Plugin) {
            return contains((Plugin) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Plugin) {
            return indexOf((Plugin) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Plugin) {
            return lastIndexOf((Plugin) obj);
        }
        return -1;
    }

    public /* bridge */ boolean remove(Plugin plugin) {
        return super.remove((Object) plugin);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Plugin) {
            return remove((Plugin) obj);
        }
        return false;
    }
}
