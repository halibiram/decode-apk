package androidx.camera.core.impl;

import android.util.ArrayMap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.impl.Config;
import defpackage.C0849xd4add4c;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class OptionsBundle implements Config {
    private static final OptionsBundle EMPTY_BUNDLE;
    protected static final Comparator<Config.Option<?>> ID_COMPARE;
    protected final TreeMap<Config.Option<?>, Map<Config.OptionPriority, Object>> mOptions;

    static {
        C0849xd4add4c c0849xd4add4c = new C0849xd4add4c(1);
        ID_COMPARE = c0849xd4add4c;
        EMPTY_BUNDLE = new OptionsBundle(new TreeMap(c0849xd4add4c));
    }

    public OptionsBundle(TreeMap<Config.Option<?>, Map<Config.OptionPriority, Object>> treeMap) {
        this.mOptions = treeMap;
    }

    @NonNull
    public static OptionsBundle emptyBundle() {
        return EMPTY_BUNDLE;
    }

    @NonNull
    public static OptionsBundle from(@NonNull Config config2) {
        if (OptionsBundle.class.equals(config2.getClass())) {
            return (OptionsBundle) config2;
        }
        TreeMap treeMap = new TreeMap(ID_COMPARE);
        for (Config.Option<?> option : config2.listOptions()) {
            Set<Config.OptionPriority> priorities = config2.getPriorities(option);
            ArrayMap arrayMap = new ArrayMap();
            for (Config.OptionPriority optionPriority : priorities) {
                arrayMap.put(optionPriority, config2.retrieveOptionWithPriority(option, optionPriority));
            }
            treeMap.put(option, arrayMap);
        }
        return new OptionsBundle(treeMap);
    }

    public static /* synthetic */ int lambda$static$0(Config.Option option, Config.Option option2) {
        return option.getId().compareTo(option2.getId());
    }

    @Override // androidx.camera.core.impl.Config
    public boolean containsOption(@NonNull Config.Option<?> option) {
        return this.mOptions.containsKey(option);
    }

    @Override // androidx.camera.core.impl.Config
    public void findOptions(@NonNull String str, @NonNull Config.OptionMatcher optionMatcher) {
        for (Map.Entry<Config.Option<?>, Map<Config.OptionPriority, Object>> entry : this.mOptions.tailMap(Config.Option.create(str, Void.class)).entrySet()) {
            if (!entry.getKey().getId().startsWith(str) || !optionMatcher.onOptionMatched(entry.getKey())) {
                return;
            }
        }
    }

    @Override // androidx.camera.core.impl.Config
    @NonNull
    public Config.OptionPriority getOptionPriority(@NonNull Config.Option<?> option) {
        Map<Config.OptionPriority, Object> map = this.mOptions.get(option);
        if (map != null) {
            return (Config.OptionPriority) Collections.min(map.keySet());
        }
        throw new IllegalArgumentException("Option does not exist: " + option);
    }

    @Override // androidx.camera.core.impl.Config
    @NonNull
    public Set<Config.OptionPriority> getPriorities(@NonNull Config.Option<?> option) {
        Map<Config.OptionPriority, Object> map = this.mOptions.get(option);
        if (map == null) {
            return Collections.emptySet();
        }
        return DesugarCollections.unmodifiableSet(map.keySet());
    }

    @Override // androidx.camera.core.impl.Config
    @NonNull
    public Set<Config.Option<?>> listOptions() {
        return DesugarCollections.unmodifiableSet(this.mOptions.keySet());
    }

    @Override // androidx.camera.core.impl.Config
    @Nullable
    public <ValueT> ValueT retrieveOption(@NonNull Config.Option<ValueT> option) {
        Map<Config.OptionPriority, Object> map = this.mOptions.get(option);
        if (map != null) {
            return (ValueT) map.get((Config.OptionPriority) Collections.min(map.keySet()));
        }
        throw new IllegalArgumentException("Option does not exist: " + option);
    }

    @Override // androidx.camera.core.impl.Config
    @Nullable
    public <ValueT> ValueT retrieveOptionWithPriority(@NonNull Config.Option<ValueT> option, @NonNull Config.OptionPriority optionPriority) {
        Map<Config.OptionPriority, Object> map = this.mOptions.get(option);
        if (map != null) {
            if (map.containsKey(optionPriority)) {
                return (ValueT) map.get(optionPriority);
            }
            throw new IllegalArgumentException("Option does not exist: " + option + " with priority=" + optionPriority);
        }
        throw new IllegalArgumentException("Option does not exist: " + option);
    }

    @Override // androidx.camera.core.impl.Config
    @Nullable
    public <ValueT> ValueT retrieveOption(@NonNull Config.Option<ValueT> option, @Nullable ValueT valuet) {
        try {
            return (ValueT) retrieveOption(option);
        } catch (IllegalArgumentException unused) {
            return valuet;
        }
    }
}
