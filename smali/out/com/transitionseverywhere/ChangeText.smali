.class public Lcom/transitionseverywhere/ChangeText;
.super Landroidx/transition/Transition;
.source "ChangeText.java"


# static fields
.field public static final CHANGE_BEHAVIOR_IN:I = 0x2

.field public static final CHANGE_BEHAVIOR_KEEP:I = 0x0

.field public static final CHANGE_BEHAVIOR_OUT:I = 0x1

.field public static final CHANGE_BEHAVIOR_OUT_IN:I = 0x3

.field private static final PROPNAME_TEXT:Ljava/lang/String; = "android:textchange:text"

.field private static final PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:textchange:textColor"

.field private static final PROPNAME_TEXT_SELECTION_END:Ljava/lang/String; = "android:textchange:textSelectionEnd"

.field private static final PROPNAME_TEXT_SELECTION_START:Ljava/lang/String; = "android:textchange:textSelectionStart"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mChangeBehavior:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android:textchange:text"

    const-string v1, "android:textchange:textSelectionStart"

    const-string v2, "android:textchange:textSelectionEnd"

    .line 92
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    return-void
.end method

.method static synthetic access$000(Lcom/transitionseverywhere/ChangeText;Landroid/widget/EditText;II)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/transitionseverywhere/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/transitionseverywhere/ChangeText;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    return p0
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 6

    .line 132
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    .line 133
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 134
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "android:textchange:text"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_37

    .line 136
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 137
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textSelectionStart"

    .line 136
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 139
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textSelectionEnd"

    .line 138
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_37
    iget v1, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    if-lez v1, :cond_4a

    .line 142
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android:textchange:textColor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    return-void
.end method

.method private setSelection(Landroid/widget/EditText;II)V
    .registers 4
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    .line 314
    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeText;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 149
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeText;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 24
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

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_19f

    if-eqz v1, :cond_19f

    .line 161
    iget-object v2, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_19f

    iget-object v2, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-nez v2, :cond_18

    goto/16 :goto_19f

    .line 165
    :cond_18
    iget-object v2, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 166
    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 167
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:textchange:text"

    .line 168
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_33

    .line 169
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object v11, v3

    goto :goto_34

    :cond_33
    move-object v11, v4

    .line 170
    :goto_34
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 171
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object v12, v2

    goto :goto_43

    :cond_42
    move-object v12, v4

    .line 173
    :goto_43
    instance-of v2, v9, Landroid/widget/EditText;

    const/4 v3, -0x1

    if-eqz v2, :cond_98

    const-string v4, "android:textchange:textSelectionStart"

    .line 174
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 175
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5c

    :cond_5b
    move v5, v3

    :goto_5c
    const-string v6, "android:textchange:textSelectionEnd"

    .line 176
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6f

    .line 177
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_70

    :cond_6f
    move v7, v5

    .line 178
    :goto_70
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_80

    .line 179
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 180
    :cond_80
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_91

    .line 181
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_92

    :cond_91
    move v4, v3

    :goto_92
    move v15, v3

    move/from16 v16, v4

    move v13, v5

    move v14, v7

    goto :goto_9d

    :cond_98
    move v13, v3

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    .line 185
    :goto_9d
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19d

    .line 188
    iget v3, v10, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    const/4 v7, 0x2

    if-eq v3, v7, :cond_b3

    .line 189
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_b3

    .line 191
    move-object v2, v9

    check-cast v2, Landroid/widget/EditText;

    invoke-direct {v10, v2, v13, v14}, Lcom/transitionseverywhere/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    .line 195
    :cond_b3
    iget v2, v10, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    const/16 v17, 0x0

    if-nez v2, :cond_dc

    .line 197
    new-array v0, v7, [F

    fill-array-data v0, :array_1a2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 198
    new-instance v8, Lcom/transitionseverywhere/ChangeText$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v9

    move-object v4, v12

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/transitionseverywhere/ChangeText$1;-><init>(Lcom/transitionseverywhere/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 p3, v13

    move/from16 p2, v14

    move/from16 v6, v17

    :goto_d9
    move-object v13, v7

    goto/16 :goto_187

    :cond_dc
    const-string v2, "android:textchange:textColor"

    .line 211
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 215
    iget v1, v10, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    const/4 v5, 0x3

    const/4 v4, 0x1

    if-eq v1, v5, :cond_106

    if-ne v1, v4, :cond_fb

    goto :goto_106

    :cond_fb
    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 p3, v13

    move/from16 p2, v14

    const/4 v7, 0x0

    move v13, v5

    goto :goto_13b

    .line 217
    :cond_106
    :goto_106
    new-array v1, v7, [I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    aput v2, v1, v17

    aput v17, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 218
    new-instance v1, Lcom/transitionseverywhere/ChangeText$2;

    invoke-direct {v1, v10, v9, v0}, Lcom/transitionseverywhere/ChangeText$2;-><init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    new-instance v2, Lcom/transitionseverywhere/ChangeText$3;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v8, v2

    move-object v2, v11

    move/from16 p2, v14

    move-object v14, v3

    move-object v3, v9

    move/from16 v18, v4

    move-object v4, v12

    move/from16 p3, v13

    move v13, v5

    move v5, v15

    move/from16 v19, v6

    move/from16 v6, v16

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/transitionseverywhere/ChangeText$3;-><init>(Lcom/transitionseverywhere/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    invoke-virtual {v14, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v7, v14

    .line 242
    :goto_13b
    iget v0, v10, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    if-eq v0, v13, :cond_147

    const/4 v1, 0x2

    if-ne v0, v1, :cond_143

    goto :goto_148

    :cond_143
    move/from16 v2, v19

    const/4 v8, 0x0

    goto :goto_168

    :cond_147
    const/4 v1, 0x2

    .line 244
    :goto_148
    new-array v0, v1, [I

    aput v17, v0, v17

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    aput v2, v0, v18

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 245
    new-instance v0, Lcom/transitionseverywhere/ChangeText$4;

    move/from16 v2, v19

    invoke-direct {v0, v10, v9, v2}, Lcom/transitionseverywhere/ChangeText$4;-><init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    new-instance v0, Lcom/transitionseverywhere/ChangeText$5;

    invoke-direct {v0, v10, v9, v2}, Lcom/transitionseverywhere/ChangeText$5;-><init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_168
    if-eqz v7, :cond_180

    if-eqz v8, :cond_180

    .line 262
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 263
    move-object v3, v0

    check-cast v3, Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v7, v1, v17

    aput-object v8, v1, v18

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    move-object v13, v0

    move v6, v2

    goto :goto_187

    :cond_180
    if-eqz v7, :cond_185

    move v6, v2

    goto/16 :goto_d9

    :cond_185
    move v6, v2

    move-object v13, v8

    .line 271
    :goto_187
    new-instance v14, Lcom/transitionseverywhere/ChangeText$6;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v12

    move v4, v15

    move/from16 v5, v16

    move-object v7, v11

    move/from16 v8, p3

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/transitionseverywhere/ChangeText$6;-><init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V

    .line 306
    invoke-virtual {v10, v14}, Lcom/transitionseverywhere/ChangeText;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-object v13

    :cond_19d
    const/4 v0, 0x0

    return-object v0

    :cond_19f
    :goto_19f
    const/4 v0, 0x0

    return-object v0

    nop

    :array_1a2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getChangeBehavior()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 118
    sget-object v0, Lcom/transitionseverywhere/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setChangeBehavior(I)Lcom/transitionseverywhere/ChangeText;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-ltz p1, :cond_7

    const/4 v0, 0x3

    if-gt p1, v0, :cond_7

    .line 110
    iput p1, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    :cond_7
    return-object p0
.end method
