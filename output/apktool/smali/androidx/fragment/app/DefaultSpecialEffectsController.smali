.class Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v10

    .line 18
    const/4 v6, 0x0

    .line 19
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v12, 0x2

    .line 24
    if-eqz v0, :cond_8

    .line 25
    .line 26
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v13, v0

    .line 31
    check-cast v13, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 32
    .line 33
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 40
    .line 41
    .line 42
    :goto_1
    move-object/from16 v5, p4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v13, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v14, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 56
    .line 57
    if-nez v14, :cond_2

    .line 58
    .line 59
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 64
    .line 65
    .line 66
    move-result-object v15

    .line 67
    invoke-virtual {v15}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    .line 73
    move-object/from16 v5, p4

    .line 74
    .line 75
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v15}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 103
    .line 104
    const/16 v16, 0x1

    .line 105
    .line 106
    if-ne v1, v2, :cond_5

    .line 107
    .line 108
    const/4 v4, 0x1

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    const/4 v4, 0x0

    .line 111
    :goto_2
    move-object/from16 v6, p2

    .line 112
    .line 113
    if-eqz v4, :cond_6

    .line 114
    .line 115
    invoke-interface {v6, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_6
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    .line 124
    .line 125
    move-object v0, v2

    .line 126
    move-object/from16 v1, p0

    .line 127
    .line 128
    move-object v11, v2

    .line 129
    move-object v2, v7

    .line 130
    move-object/from16 v17, v3

    .line 131
    .line 132
    move-object v5, v15

    .line 133
    move-object v6, v13

    .line 134
    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v14, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    .line 139
    .line 140
    move-object/from16 v0, v17

    .line 141
    .line 142
    invoke-virtual {v14, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v14}, Landroid/animation/Animator;->start()V

    .line 146
    .line 147
    .line 148
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    invoke-virtual {v15}, Landroidx/fragment/app/SpecialEffectsController$Operation;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v1, Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    .line 162
    .line 163
    move-object/from16 v11, p0

    .line 164
    .line 165
    invoke-direct {v1, v11, v14, v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 169
    .line 170
    .line 171
    const/4 v6, 0x1

    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_8
    move-object/from16 v11, p0

    .line 175
    .line 176
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_f

    .line 185
    .line 186
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object v10, v0

    .line 191
    check-cast v10, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 192
    .line 193
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz p3, :cond_a

    .line 202
    .line 203
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_9

    .line 208
    .line 209
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    :cond_9
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_a
    if-eqz v6, :cond_c

    .line 217
    .line 218
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_b

    .line 223
    .line 224
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    :cond_b
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_c
    iget-object v14, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {v10, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 242
    .line 243
    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 244
    .line 245
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Landroid/view/animation/Animation;

    .line 250
    .line 251
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 256
    .line 257
    if-eq v1, v2, :cond_d

    .line 258
    .line 259
    invoke-virtual {v14, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_d
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 267
    .line 268
    .line 269
    new-instance v15, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    .line 270
    .line 271
    invoke-direct {v15, v0, v7, v14}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    .line 275
    .line 276
    move-object v0, v5

    .line 277
    move-object/from16 v1, p0

    .line 278
    .line 279
    move-object v2, v13

    .line 280
    move-object v3, v7

    .line 281
    move-object v4, v14

    .line 282
    move-object v12, v5

    .line 283
    move-object v5, v10

    .line 284
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v15, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v14, v15}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    .line 292
    .line 293
    const/4 v12, 0x2

    .line 294
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_e

    .line 299
    .line 300
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    :cond_e
    :goto_4
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$5;

    .line 308
    .line 309
    move-object v0, v5

    .line 310
    move-object/from16 v1, p0

    .line 311
    .line 312
    move-object v2, v14

    .line 313
    move-object v3, v7

    .line 314
    move-object v4, v10

    .line 315
    move-object v10, v5

    .line 316
    move-object v5, v13

    .line 317
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$5;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v15, v10}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    :cond_f
    return-void
.end method

.method private startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
    .locals 32
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/fragment/app/SpecialEffectsController$Operation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/fragment/app/SpecialEffectsController$Operation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p3

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    new-instance v10, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v15, 0x0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v15, :cond_2

    .line 43
    .line 44
    move-object v15, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-eqz v2, :cond_0

    .line 47
    .line 48
    if-ne v15, v2, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, " returned Transition "

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, " which uses a different Transition  type than other Fragments."

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_4
    if-nez v15, :cond_6

    .line 97
    .line 98
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    return-object v10

    .line 128
    :cond_6
    new-instance v14, Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    new-instance v13, Landroid/graphics/Rect;

    .line 142
    .line 143
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance v12, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    new-instance v5, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 157
    .line 158
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v20

    .line 165
    const/4 v0, 0x0

    .line 166
    const/4 v2, 0x0

    .line 167
    const/16 v21, 0x0

    .line 168
    .line 169
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const/16 v22, 0x2

    .line 174
    .line 175
    if-eqz v1, :cond_1b

    .line 176
    .line 177
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 182
    .line 183
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->hasSharedElementTransition()Z

    .line 184
    .line 185
    .line 186
    move-result v16

    .line 187
    if-eqz v16, :cond_1a

    .line 188
    .line 189
    if-eqz v8, :cond_1a

    .line 190
    .line 191
    if-eqz v9, :cond_1a

    .line 192
    .line 193
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSharedElementTransition()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v15, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v15, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 214
    .line 215
    .line 216
    move-result-object v16

    .line 217
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 222
    .line 223
    .line 224
    move-result-object v16

    .line 225
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    move-object/from16 v16, v1

    .line 230
    .line 231
    move-object/from16 v18, v2

    .line 232
    .line 233
    const/4 v1, 0x0

    .line 234
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-ge v1, v2, :cond_8

    .line 239
    .line 240
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    move-object/from16 v19, v11

    .line 249
    .line 250
    const/4 v11, -0x1

    .line 251
    if-eq v2, v11, :cond_7

    .line 252
    .line 253
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    check-cast v11, Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v0, v2, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 263
    .line 264
    move-object/from16 v11, v19

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_8
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    if-nez v7, :cond_9

    .line 276
    .line 277
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    goto :goto_4

    .line 294
    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    const/4 v9, 0x0

    .line 315
    :goto_5
    if-ge v9, v3, :cond_a

    .line 316
    .line 317
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v19

    .line 321
    move/from16 v24, v3

    .line 322
    .line 323
    move-object/from16 v3, v19

    .line 324
    .line 325
    check-cast v3, Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v19

    .line 331
    move-object/from16 v8, v19

    .line 332
    .line 333
    check-cast v8, Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v4, v3, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    add-int/lit8 v9, v9, 0x1

    .line 339
    .line 340
    move-object/from16 v8, p4

    .line 341
    .line 342
    move/from16 v3, v24

    .line 343
    .line 344
    goto :goto_5

    .line 345
    :cond_a
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-eqz v3, :cond_c

    .line 350
    .line 351
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    if-eqz v8, :cond_b

    .line 360
    .line 361
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    check-cast v8, Ljava/lang/String;

    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    if-eqz v8, :cond_c

    .line 377
    .line 378
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    check-cast v8, Ljava/lang/String;

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_c
    new-instance v8, Landroidx/collection/ArrayMap;

    .line 386
    .line 387
    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 395
    .line 396
    invoke-virtual {v6, v8, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v8, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 400
    .line 401
    .line 402
    if-eqz v1, :cond_11

    .line 403
    .line 404
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-eqz v3, :cond_d

    .line 409
    .line 410
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    :cond_d
    invoke-virtual {v1, v0, v8}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    const/4 v3, 0x1

    .line 421
    sub-int/2addr v1, v3

    .line 422
    :goto_8
    if-ltz v1, :cond_10

    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    check-cast v3, Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v8, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    check-cast v9, Landroid/view/View;

    .line 435
    .line 436
    if-nez v9, :cond_e

    .line 437
    .line 438
    invoke-virtual {v4, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-object/from16 v19, v0

    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_e
    move-object/from16 v19, v0

    .line 445
    .line 446
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-nez v0, :cond_f

    .line 455
    .line 456
    invoke-virtual {v4, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    check-cast v0, Ljava/lang/String;

    .line 461
    .line 462
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v4, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    :cond_f
    :goto_9
    add-int/lit8 v1, v1, -0x1

    .line 470
    .line 471
    move-object/from16 v0, v19

    .line 472
    .line 473
    goto :goto_8

    .line 474
    :cond_10
    move-object/from16 v19, v0

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_11
    move-object/from16 v19, v0

    .line 478
    .line 479
    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v4, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 484
    .line 485
    .line 486
    :goto_a
    new-instance v9, Landroidx/collection/ArrayMap;

    .line 487
    .line 488
    invoke-direct {v9}, Landroidx/collection/ArrayMap;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 496
    .line 497
    invoke-virtual {v6, v9, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v9, v11}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 501
    .line 502
    .line 503
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v9, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 508
    .line 509
    .line 510
    if-eqz v2, :cond_15

    .line 511
    .line 512
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_12

    .line 517
    .line 518
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    :cond_12
    invoke-virtual {v2, v11, v9}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    const/4 v1, 0x1

    .line 529
    sub-int/2addr v0, v1

    .line 530
    :goto_b
    if-ltz v0, :cond_16

    .line 531
    .line 532
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    check-cast v1, Ljava/lang/String;

    .line 537
    .line 538
    invoke-virtual {v9, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    check-cast v2, Landroid/view/View;

    .line 543
    .line 544
    if-nez v2, :cond_13

    .line 545
    .line 546
    invoke-static {v4, v1}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    if-eqz v1, :cond_14

    .line 551
    .line 552
    invoke-virtual {v4, v1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    goto :goto_c

    .line 556
    :cond_13
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    if-nez v3, :cond_14

    .line 565
    .line 566
    invoke-static {v4, v1}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    if-eqz v1, :cond_14

    .line 571
    .line 572
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-virtual {v4, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    :cond_14
    :goto_c
    add-int/lit8 v0, v0, -0x1

    .line 580
    .line 581
    goto :goto_b

    .line 582
    :cond_15
    invoke-static {v4, v9}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 583
    .line 584
    .line 585
    :cond_16
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {v6, v8, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {v6, v9, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v4}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_17

    .line 604
    .line 605
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 609
    .line 610
    .line 611
    move-object/from16 v3, p4

    .line 612
    .line 613
    move-object/from16 v26, v4

    .line 614
    .line 615
    move-object v1, v5

    .line 616
    move-object v5, v6

    .line 617
    move-object v4, v12

    .line 618
    move-object v8, v13

    .line 619
    move-object v9, v14

    .line 620
    move-object v11, v15

    .line 621
    move-object/from16 v2, v18

    .line 622
    .line 623
    const/4 v0, 0x0

    .line 624
    const/4 v6, 0x0

    .line 625
    move-object/from16 v15, p5

    .line 626
    .line 627
    goto/16 :goto_f

    .line 628
    .line 629
    :cond_17
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    const/4 v3, 0x1

    .line 638
    invoke-static {v0, v1, v7, v8, v3}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 639
    .line 640
    .line 641
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    new-instance v1, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    .line 646
    .line 647
    move-object/from16 v22, v19

    .line 648
    .line 649
    move-object v0, v1

    .line 650
    move-object/from16 v23, v10

    .line 651
    .line 652
    move-object/from16 v7, v16

    .line 653
    .line 654
    move-object v10, v1

    .line 655
    move-object/from16 v1, p0

    .line 656
    .line 657
    move-object/from16 v16, v14

    .line 658
    .line 659
    move-object/from16 v25, v18

    .line 660
    .line 661
    move-object v14, v2

    .line 662
    move-object/from16 v2, p5

    .line 663
    .line 664
    const/4 v6, 0x0

    .line 665
    const/16 v24, 0x1

    .line 666
    .line 667
    move-object/from16 v3, p4

    .line 668
    .line 669
    move-object/from16 v26, v4

    .line 670
    .line 671
    move/from16 v4, p3

    .line 672
    .line 673
    move-object/from16 v27, v5

    .line 674
    .line 675
    move-object v5, v9

    .line 676
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    .line 677
    .line 678
    .line 679
    invoke-static {v14, v10}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 687
    .line 688
    .line 689
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-nez v0, :cond_18

    .line 694
    .line 695
    move-object/from16 v0, v22

    .line 696
    .line 697
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    check-cast v0, Ljava/lang/String;

    .line 702
    .line 703
    invoke-virtual {v8, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    move-object v2, v0

    .line 708
    check-cast v2, Landroid/view/View;

    .line 709
    .line 710
    invoke-virtual {v15, v7, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 711
    .line 712
    .line 713
    goto :goto_d

    .line 714
    :cond_18
    move-object/from16 v2, v25

    .line 715
    .line 716
    :goto_d
    invoke-virtual {v9}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    move-object/from16 v1, v27

    .line 721
    .line 722
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 723
    .line 724
    .line 725
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-nez v0, :cond_19

    .line 730
    .line 731
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    check-cast v0, Ljava/lang/String;

    .line 736
    .line 737
    invoke-virtual {v9, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    check-cast v0, Landroid/view/View;

    .line 742
    .line 743
    if-eqz v0, :cond_19

    .line 744
    .line 745
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$7;

    .line 750
    .line 751
    move-object/from16 v5, p0

    .line 752
    .line 753
    invoke-direct {v4, v5, v15, v0, v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$7;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 754
    .line 755
    .line 756
    invoke-static {v3, v4}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 757
    .line 758
    .line 759
    move-object/from16 v0, v16

    .line 760
    .line 761
    const/16 v21, 0x1

    .line 762
    .line 763
    goto :goto_e

    .line 764
    :cond_19
    move-object/from16 v5, p0

    .line 765
    .line 766
    move-object/from16 v0, v16

    .line 767
    .line 768
    :goto_e
    invoke-virtual {v15, v7, v0, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 769
    .line 770
    .line 771
    const/16 v16, 0x0

    .line 772
    .line 773
    const/16 v17, 0x0

    .line 774
    .line 775
    const/4 v14, 0x0

    .line 776
    const/4 v3, 0x0

    .line 777
    move-object v4, v12

    .line 778
    move-object v12, v15

    .line 779
    move-object v8, v13

    .line 780
    move-object v13, v7

    .line 781
    move-object v9, v0

    .line 782
    move-object v11, v15

    .line 783
    move-object v15, v3

    .line 784
    move-object/from16 v18, v7

    .line 785
    .line 786
    move-object/from16 v19, v1

    .line 787
    .line 788
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 789
    .line 790
    .line 791
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 792
    .line 793
    move-object/from16 v3, p4

    .line 794
    .line 795
    move-object/from16 v10, v23

    .line 796
    .line 797
    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-object/from16 v15, p5

    .line 801
    .line 802
    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-object v0, v7

    .line 806
    goto :goto_f

    .line 807
    :cond_1a
    move-object/from16 v25, v2

    .line 808
    .line 809
    move-object/from16 v26, v4

    .line 810
    .line 811
    move-object v1, v5

    .line 812
    move-object v5, v6

    .line 813
    move-object v3, v8

    .line 814
    move-object v4, v12

    .line 815
    move-object v8, v13

    .line 816
    move-object v11, v15

    .line 817
    const/4 v6, 0x0

    .line 818
    move-object v15, v9

    .line 819
    move-object v9, v14

    .line 820
    move-object/from16 v2, v25

    .line 821
    .line 822
    :goto_f
    move/from16 v7, p3

    .line 823
    .line 824
    move-object v12, v4

    .line 825
    move-object v6, v5

    .line 826
    move-object v13, v8

    .line 827
    move-object v14, v9

    .line 828
    move-object v9, v15

    .line 829
    move-object/from16 v4, v26

    .line 830
    .line 831
    move-object v5, v1

    .line 832
    move-object v8, v3

    .line 833
    move-object v15, v11

    .line 834
    goto/16 :goto_2

    .line 835
    .line 836
    :cond_1b
    move-object/from16 v25, v2

    .line 837
    .line 838
    move-object/from16 v26, v4

    .line 839
    .line 840
    move-object v1, v5

    .line 841
    move-object v5, v6

    .line 842
    move-object v3, v8

    .line 843
    move-object v4, v12

    .line 844
    move-object v8, v13

    .line 845
    move-object v11, v15

    .line 846
    const/4 v6, 0x0

    .line 847
    const/16 v24, 0x1

    .line 848
    .line 849
    move-object v15, v9

    .line 850
    move-object v9, v14

    .line 851
    new-instance v2, Ljava/util/ArrayList;

    .line 852
    .line 853
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .line 855
    .line 856
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 857
    .line 858
    .line 859
    move-result-object v7

    .line 860
    const/4 v13, 0x0

    .line 861
    const/4 v14, 0x0

    .line 862
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 863
    .line 864
    .line 865
    move-result v12

    .line 866
    if-eqz v12, :cond_28

    .line 867
    .line 868
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v12

    .line 872
    move-object/from16 v20, v12

    .line 873
    .line 874
    check-cast v20, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 875
    .line 876
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 877
    .line 878
    .line 879
    move-result v12

    .line 880
    if-eqz v12, :cond_1c

    .line 881
    .line 882
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 883
    .line 884
    .line 885
    move-result-object v12

    .line 886
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 887
    .line 888
    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 892
    .line 893
    .line 894
    const/4 v6, 0x0

    .line 895
    goto :goto_10

    .line 896
    :cond_1c
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v6

    .line 900
    invoke-virtual {v11, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v6

    .line 904
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 905
    .line 906
    .line 907
    move-result-object v12

    .line 908
    if-eqz v0, :cond_1e

    .line 909
    .line 910
    if-eq v12, v3, :cond_1d

    .line 911
    .line 912
    if-ne v12, v15, :cond_1e

    .line 913
    .line 914
    :cond_1d
    const/16 v16, 0x1

    .line 915
    .line 916
    goto :goto_11

    .line 917
    :cond_1e
    const/16 v16, 0x0

    .line 918
    .line 919
    :goto_11
    if-nez v6, :cond_20

    .line 920
    .line 921
    if-nez v16, :cond_1f

    .line 922
    .line 923
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 924
    .line 925
    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 929
    .line 930
    .line 931
    :cond_1f
    move-object/from16 v12, p2

    .line 932
    .line 933
    move-object/from16 v31, v1

    .line 934
    .line 935
    move-object/from16 v30, v4

    .line 936
    .line 937
    move-object/from16 p3, v7

    .line 938
    .line 939
    move-object/from16 v28, v9

    .line 940
    .line 941
    move-object v6, v13

    .line 942
    move-object v1, v15

    .line 943
    move-object/from16 v7, v25

    .line 944
    .line 945
    const/4 v13, 0x0

    .line 946
    goto/16 :goto_15

    .line 947
    .line 948
    :cond_20
    move-object/from16 p3, v7

    .line 949
    .line 950
    new-instance v7, Ljava/util/ArrayList;

    .line 951
    .line 952
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .line 954
    .line 955
    move-object/from16 v17, v13

    .line 956
    .line 957
    invoke-virtual {v12}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 958
    .line 959
    .line 960
    move-result-object v13

    .line 961
    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 962
    .line 963
    invoke-virtual {v5, v7, v13}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 964
    .line 965
    .line 966
    if-eqz v16, :cond_22

    .line 967
    .line 968
    if-ne v12, v3, :cond_21

    .line 969
    .line 970
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 971
    .line 972
    .line 973
    goto :goto_12

    .line 974
    :cond_21
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 975
    .line 976
    .line 977
    :cond_22
    :goto_12
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 978
    .line 979
    .line 980
    move-result v13

    .line 981
    if-eqz v13, :cond_23

    .line 982
    .line 983
    invoke-virtual {v11, v6, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 984
    .line 985
    .line 986
    move-object/from16 v31, v1

    .line 987
    .line 988
    move-object/from16 v30, v4

    .line 989
    .line 990
    move-object/from16 v28, v9

    .line 991
    .line 992
    move-object v13, v12

    .line 993
    move-object v4, v14

    .line 994
    move-object v1, v15

    .line 995
    move-object/from16 v9, v17

    .line 996
    .line 997
    move-object/from16 v12, p2

    .line 998
    .line 999
    goto :goto_13

    .line 1000
    :cond_23
    invoke-virtual {v11, v6, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1001
    .line 1002
    .line 1003
    const/16 v18, 0x0

    .line 1004
    .line 1005
    const/16 v19, 0x0

    .line 1006
    .line 1007
    const/16 v16, 0x0

    .line 1008
    .line 1009
    const/16 v27, 0x0

    .line 1010
    .line 1011
    move-object v13, v12

    .line 1012
    move-object v12, v11

    .line 1013
    move-object/from16 v28, v9

    .line 1014
    .line 1015
    move-object/from16 v29, v13

    .line 1016
    .line 1017
    move-object/from16 v9, v17

    .line 1018
    .line 1019
    move-object v13, v6

    .line 1020
    move-object/from16 v30, v4

    .line 1021
    .line 1022
    move-object v4, v14

    .line 1023
    move-object v14, v6

    .line 1024
    move-object/from16 v31, v1

    .line 1025
    .line 1026
    move-object v1, v15

    .line 1027
    move-object v15, v7

    .line 1028
    move-object/from16 v17, v27

    .line 1029
    .line 1030
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual/range {v29 .. v29}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v12

    .line 1037
    sget-object v13, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1038
    .line 1039
    if-ne v12, v13, :cond_24

    .line 1040
    .line 1041
    move-object/from16 v12, p2

    .line 1042
    .line 1043
    move-object/from16 v13, v29

    .line 1044
    .line 1045
    invoke-interface {v12, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1046
    .line 1047
    .line 1048
    new-instance v14, Ljava/util/ArrayList;

    .line 1049
    .line 1050
    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v15

    .line 1057
    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1058
    .line 1059
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v15

    .line 1066
    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1067
    .line 1068
    invoke-virtual {v11, v6, v15, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v14

    .line 1075
    new-instance v15, Landroidx/fragment/app/DefaultSpecialEffectsController$8;

    .line 1076
    .line 1077
    invoke-direct {v15, v5, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$8;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-static {v14, v15}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 1081
    .line 1082
    .line 1083
    goto :goto_13

    .line 1084
    :cond_24
    move-object/from16 v12, p2

    .line 1085
    .line 1086
    move-object/from16 v13, v29

    .line 1087
    .line 1088
    :goto_13
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v14

    .line 1092
    sget-object v15, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1093
    .line 1094
    if-ne v14, v15, :cond_26

    .line 1095
    .line 1096
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1097
    .line 1098
    .line 1099
    if-eqz v21, :cond_25

    .line 1100
    .line 1101
    invoke-virtual {v11, v6, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1102
    .line 1103
    .line 1104
    :cond_25
    move-object/from16 v7, v25

    .line 1105
    .line 1106
    goto :goto_14

    .line 1107
    :cond_26
    move-object/from16 v7, v25

    .line 1108
    .line 1109
    invoke-virtual {v11, v6, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1110
    .line 1111
    .line 1112
    :goto_14
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1113
    .line 1114
    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed()Z

    .line 1118
    .line 1119
    .line 1120
    move-result v13

    .line 1121
    if-eqz v13, :cond_27

    .line 1122
    .line 1123
    const/4 v13, 0x0

    .line 1124
    invoke-virtual {v11, v4, v6, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v4

    .line 1128
    move-object v14, v4

    .line 1129
    move-object v6, v9

    .line 1130
    goto :goto_15

    .line 1131
    :cond_27
    const/4 v13, 0x0

    .line 1132
    invoke-virtual {v11, v9, v6, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v6

    .line 1136
    move-object v14, v4

    .line 1137
    :goto_15
    move-object v15, v1

    .line 1138
    move-object v13, v6

    .line 1139
    move-object/from16 v25, v7

    .line 1140
    .line 1141
    move-object/from16 v9, v28

    .line 1142
    .line 1143
    move-object/from16 v4, v30

    .line 1144
    .line 1145
    move-object/from16 v1, v31

    .line 1146
    .line 1147
    const/4 v6, 0x0

    .line 1148
    move-object/from16 v7, p3

    .line 1149
    .line 1150
    goto/16 :goto_10

    .line 1151
    .line 1152
    :cond_28
    move-object/from16 v31, v1

    .line 1153
    .line 1154
    move-object/from16 v30, v4

    .line 1155
    .line 1156
    move-object v9, v13

    .line 1157
    move-object v4, v14

    .line 1158
    move-object v1, v15

    .line 1159
    invoke-virtual {v11, v4, v9, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v4

    .line 1163
    if-nez v4, :cond_29

    .line 1164
    .line 1165
    return-object v10

    .line 1166
    :cond_29
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v6

    .line 1170
    :cond_2a
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1171
    .line 1172
    .line 1173
    move-result v7

    .line 1174
    if-eqz v7, :cond_31

    .line 1175
    .line 1176
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v7

    .line 1180
    check-cast v7, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1181
    .line 1182
    invoke-virtual {v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v8

    .line 1186
    if-eqz v8, :cond_2b

    .line 1187
    .line 1188
    goto :goto_16

    .line 1189
    :cond_2b
    invoke-virtual {v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v8

    .line 1193
    invoke-virtual {v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v9

    .line 1197
    if-eqz v0, :cond_2d

    .line 1198
    .line 1199
    if-eq v9, v3, :cond_2c

    .line 1200
    .line 1201
    if-ne v9, v1, :cond_2d

    .line 1202
    .line 1203
    :cond_2c
    const/4 v12, 0x1

    .line 1204
    goto :goto_17

    .line 1205
    :cond_2d
    const/4 v12, 0x0

    .line 1206
    :goto_17
    if-nez v8, :cond_2e

    .line 1207
    .line 1208
    if-eqz v12, :cond_2a

    .line 1209
    .line 1210
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v8

    .line 1214
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v8

    .line 1218
    if-nez v8, :cond_30

    .line 1219
    .line 1220
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v8

    .line 1224
    if-eqz v8, :cond_2f

    .line 1225
    .line 1226
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v8

    .line 1230
    invoke-static {v8}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    invoke-static {v9}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    :cond_2f
    invoke-virtual {v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1237
    .line 1238
    .line 1239
    goto :goto_16

    .line 1240
    :cond_30
    invoke-virtual {v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v8

    .line 1244
    invoke-virtual {v8}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v8

    .line 1248
    invoke-virtual {v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v12

    .line 1252
    new-instance v13, Landroidx/fragment/app/DefaultSpecialEffectsController$9;

    .line 1253
    .line 1254
    invoke-direct {v13, v5, v7, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$9;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v11, v8, v4, v12, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 1258
    .line 1259
    .line 1260
    goto :goto_16

    .line 1261
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v1

    .line 1265
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v1

    .line 1269
    if-nez v1, :cond_32

    .line 1270
    .line 1271
    return-object v10

    .line 1272
    :cond_32
    const/4 v1, 0x4

    .line 1273
    invoke-static {v2, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 1274
    .line 1275
    .line 1276
    move-object/from16 v1, v31

    .line 1277
    .line 1278
    invoke-virtual {v11, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v16

    .line 1282
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1283
    .line 1284
    .line 1285
    move-result v3

    .line 1286
    if-eqz v3, :cond_34

    .line 1287
    .line 1288
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v3

    .line 1292
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1293
    .line 1294
    .line 1295
    move-result v6

    .line 1296
    if-eqz v6, :cond_33

    .line 1297
    .line 1298
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v6

    .line 1302
    check-cast v6, Landroid/view/View;

    .line 1303
    .line 1304
    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    goto :goto_18

    .line 1311
    :cond_33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v3

    .line 1315
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1316
    .line 1317
    .line 1318
    move-result v6

    .line 1319
    if-eqz v6, :cond_34

    .line 1320
    .line 1321
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v6

    .line 1325
    check-cast v6, Landroid/view/View;

    .line 1326
    .line 1327
    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1328
    .line 1329
    .line 1330
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    goto :goto_19

    .line 1334
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v3

    .line 1338
    invoke-virtual {v11, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v13

    .line 1345
    move-object v12, v11

    .line 1346
    move-object/from16 v14, v30

    .line 1347
    .line 1348
    move-object v15, v1

    .line 1349
    move-object/from16 v17, v26

    .line 1350
    .line 1351
    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1352
    .line 1353
    .line 1354
    const/4 v3, 0x0

    .line 1355
    invoke-static {v2, v3}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 1356
    .line 1357
    .line 1358
    move-object/from16 v2, v30

    .line 1359
    .line 1360
    invoke-virtual {v11, v0, v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1361
    .line 1362
    .line 1363
    return-object v10
.end method

.method private syncAnimations(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 35
    .line 36
    iget v3, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 37
    .line 38
    iput v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 45
    .line 46
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 47
    .line 48
    iget v3, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 49
    .line 50
    iput v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 57
    .line 58
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 59
    .line 60
    iget v3, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 61
    .line 62
    iput v3, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 69
    .line 70
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 71
    .line 72
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 73
    .line 74
    iput v2, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/SpecialEffectsController$Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, p2, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public executeOperations(Ljava/util/List;Z)V
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v8, v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v9, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget-object v5, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    aget v5, v5, v6

    .line 42
    .line 43
    if-eq v5, v3, :cond_2

    .line 44
    .line 45
    if-eq v5, v9, :cond_2

    .line 46
    .line 47
    const/4 v3, 0x3

    .line 48
    if-eq v5, v3, :cond_2

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    if-eq v5, v3, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 55
    .line 56
    if-eq v4, v3, :cond_0

    .line 57
    .line 58
    move-object v8, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 61
    .line 62
    if-ne v4, v3, :cond_0

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    move-object v1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-static {v8}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v4, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v10, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->syncAnimations(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 113
    .line 114
    new-instance v5, Landroidx/core/os/CancellationSignal;

    .line 115
    .line 116
    invoke-direct {v5}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    .line 120
    .line 121
    .line 122
    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 123
    .line 124
    invoke-direct {v6, v2, v5, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    new-instance v5, Landroidx/core/os/CancellationSignal;

    .line 131
    .line 132
    invoke-direct {v5}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    .line 136
    .line 137
    .line 138
    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    if-eqz p2, :cond_5

    .line 142
    .line 143
    if-ne v2, v1, :cond_6

    .line 144
    .line 145
    :goto_2
    const/4 v7, 0x1

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    if-ne v2, v8, :cond_6

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    :goto_3
    invoke-direct {v6, v2, v5, p2, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    .line 157
    .line 158
    invoke-direct {v5, p0, v10, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->addCompletionListener(Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    move-object v2, p0

    .line 166
    move-object v3, v4

    .line 167
    move-object v4, v10

    .line 168
    move v5, p2

    .line 169
    move-object v6, v1

    .line 170
    move-object v7, v8

    .line 171
    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-interface {p1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    invoke-direct {p0, v0, v10, p2, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-eqz p2, :cond_8

    .line 193
    .line 194
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 199
    .line 200
    invoke-virtual {p0, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 205
    .line 206
    .line 207
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_9

    .line 212
    .line 213
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    invoke-static {v8}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    :cond_9
    return-void
.end method

.method public findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    check-cast p2, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method public retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 1
    .param p1    # Landroidx/collection/ArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method
