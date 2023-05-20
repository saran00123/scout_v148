.class public Lcom/transitionseverywhere/Crossfade;
.super Landroidx/transition/Transition;
.source "Crossfade.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private mFadeBehavior:I

.field private mResizeBehavior:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    .line 65
    iput v0, p0, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    return-void
.end method

.method static synthetic access$000(Lcom/transitionseverywhere/Crossfade;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    return p0
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 7
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_7

    return-void

    .line 268
    :cond_7
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_77

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_16

    goto :goto_77

    .line 272
    :cond_16
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 273
    iget v2, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_34

    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 276
    :cond_34
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:crossfade:bounds"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 280
    instance-of v3, v0, Landroid/view/TextureView;

    if-eqz v3, :cond_55

    .line 281
    move-object v2, v0

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_5d

    .line 283
    :cond_55
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 284
    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 286
    :goto_5d
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:crossfade:bitmap"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 289
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 290
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:crossfade:drawable"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    :goto_77
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 300
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/Crossfade;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 295
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/Crossfade;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 20
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_123

    if-eqz v1, :cond_123

    .line 177
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_13

    goto/16 :goto_123

    .line 181
    :cond_13
    sget-object v3, Lcom/transitionseverywhere/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    if-nez v3, :cond_1e

    .line 182
    new-instance v3, Landroid/animation/RectEvaluator;

    invoke-direct {v3}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v3, Lcom/transitionseverywhere/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .line 184
    :cond_1e
    iget v3, v6, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v8, :cond_26

    move v3, v8

    goto :goto_27

    :cond_26
    move v3, v7

    .line 185
    :goto_27
    iget-object v4, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 186
    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 187
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:crossfade:bounds"

    .line 188
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 189
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/graphics/Rect;

    if-eqz v9, :cond_123

    if-nez v10, :cond_42

    goto/16 :goto_123

    :cond_42
    const-string v5, "android:crossfade:bitmap"

    .line 193
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    .line 194
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    const-string v12, "android:crossfade:drawable"

    .line 195
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 196
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_123

    if-eqz v12, :cond_123

    .line 198
    invoke-virtual {v11, v5}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_123

    if-eqz v3, :cond_77

    .line 200
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    goto :goto_7b

    :cond_77
    invoke-virtual {v4}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    .line 201
    :goto_7b
    iget v1, v6, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    if-ne v1, v8, :cond_82

    .line 202
    invoke-virtual {v0, v12}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_82
    invoke-virtual {v0, v13}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget v0, v6, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    const/4 v1, 0x3

    const-string v5, "alpha"

    const/4 v11, 0x2

    if-ne v0, v11, :cond_97

    .line 212
    new-array v0, v1, [I

    fill-array-data v0, :array_124

    invoke-static {v13, v5, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_9f

    .line 214
    :cond_97
    new-array v0, v8, [I

    aput v7, v0, v7

    invoke-static {v13, v5, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_9f
    move-object v14, v0

    .line 216
    new-instance v0, Lcom/transitionseverywhere/Crossfade$1;

    invoke-direct {v0, v6, v4, v13}, Lcom/transitionseverywhere/Crossfade$1;-><init>(Lcom/transitionseverywhere/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    iget v0, v6, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    if-ne v0, v11, :cond_b8

    .line 226
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_12e

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_c5

    :cond_b8
    if-nez v0, :cond_c5

    .line 228
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v11, [F

    fill-array-data v1, :array_138

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :cond_c5
    :goto_c5
    move-object v15, v2

    .line 230
    new-instance v5, Lcom/transitionseverywhere/Crossfade$2;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v13

    move-object v11, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/transitionseverywhere/Crossfade$2;-><init>(Lcom/transitionseverywhere/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v14, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 242
    new-array v1, v8, [Landroid/animation/Animator;

    aput-object v14, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v15, :cond_eb

    .line 244
    new-array v1, v8, [Landroid/animation/Animator;

    aput-object v15, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 246
    :cond_eb
    iget v1, v6, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    if-ne v1, v8, :cond_122

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_122

    .line 247
    sget-object v1, Lcom/transitionseverywhere/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v9, v3, v7

    aput-object v10, v3, v8

    const-string v4, "bounds"

    invoke-static {v13, v4, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 249
    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 250
    iget v1, v6, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    if-ne v1, v8, :cond_122

    .line 253
    sget-object v1, Lcom/transitionseverywhere/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v7

    aput-object v10, v2, v8

    invoke-static {v12, v4, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 255
    new-array v2, v8, [Landroid/animation/Animator;

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_122
    return-object v0

    :cond_123
    :goto_123
    return-object v2

    :array_124
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    :array_12e
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_138
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getFadeBehavior()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method public getResizeBehavior()I
    .registers 2

    .line 170
    iget v0, p0, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    return v0
.end method

.method public setFadeBehavior(I)Lcom/transitionseverywhere/Crossfade;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-ltz p1, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    .line 132
    iput p1, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    :cond_7
    return-object p0
.end method

.method public setResizeBehavior(I)Lcom/transitionseverywhere/Crossfade;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-ltz p1, :cond_7

    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 158
    iput p1, p0, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    :cond_7
    return-object p0
.end method
