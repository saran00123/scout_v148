.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private rowCount:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 59
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 67
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getMeasuredDimension(III)I
    .registers 4

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_a

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_9

    return p2

    :cond_9
    return p0

    .line 182
    :cond_a
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 75
    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method protected getLineSpacing()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method protected getRowCount()I
    .registers 2

    .line 248
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 253
    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 254
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 p1, -0x1

    return p1

    .line 257
    :cond_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isSingleLine()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    .line 190
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_a

    .line 192
    iput p3, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return-void

    :cond_a
    const/4 p1, 0x1

    .line 195
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 197
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p5

    if-ne p5, p1, :cond_15

    move p5, p1

    goto :goto_16

    :cond_15
    move p5, p3

    :goto_16
    if-eqz p5, :cond_1d

    .line 198
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v0

    goto :goto_21

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v0

    :goto_21
    if-eqz p5, :cond_28

    .line 199
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v1

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v1

    .line 201
    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    move p2, p3

    move v1, v0

    move v3, v2

    .line 207
    :goto_35
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v4

    if-ge p2, v4, :cond_b2

    .line 208
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 210
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_52

    .line 211
    sget v5, Lcom/google/android/material/R$id;->row_index_key:I

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_af

    .line 215
    :cond_52
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 218
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_65

    .line 219
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 220
    invoke-static {v5}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    .line 221
    invoke-static {v5}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    goto :goto_67

    :cond_65
    move v5, p3

    move v6, v5

    :goto_67
    add-int v7, v1, v6

    .line 224
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 226
    iget-boolean v8, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    if-nez v8, :cond_7e

    if-le v7, p4, :cond_7e

    .line 228
    iget v1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int v3, v2, v1

    .line 229
    iget v1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    move v1, v0

    .line 231
    :cond_7e
    sget v2, Lcom/google/android/material/R$id;->row_index_key:I

    iget v7, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    sub-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int v2, v1, v6

    .line 233
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    .line 234
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v3

    if-eqz p5, :cond_a1

    sub-int v2, p4, v7

    sub-int v7, p4, v1

    sub-int/2addr v7, v6

    .line 237
    invoke-virtual {v4, v2, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_a4

    .line 240
    :cond_a1
    invoke-virtual {v4, v2, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    :goto_a4
    add-int/2addr v6, v5

    .line 243
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v6, v2

    iget v2, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v6, v2

    add-int/2addr v1, v6

    move v2, v8

    :goto_af
    add-int/lit8 p2, p2, 0x1

    goto :goto_35

    :cond_b2
    return-void
.end method

.method protected onMeasure(II)V
    .registers 23

    move-object/from16 v0, p0

    .line 107
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 108
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 110
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 111
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1f

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_1b

    goto :goto_1f

    :cond_1b
    const v5, 0x7fffffff

    goto :goto_20

    :cond_1f
    :goto_1f
    move v5, v1

    .line 118
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    move v10, v6

    move v9, v7

    move v11, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 124
    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_b0

    .line 125
    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 127
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_4b

    move/from16 v13, p1

    move/from16 v14, p2

    const/16 v16, 0x0

    goto :goto_ad

    :cond_4b
    move/from16 v13, p1

    move/from16 v14, p2

    .line 130
    invoke-virtual {v0, v12, v13, v14}, Lcom/google/android/material/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 132
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 135
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_67

    .line 136
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v16, 0x0

    add-int/lit8 v8, v8, 0x0

    .line 138
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/lit8 v15, v15, 0x0

    goto :goto_6c

    :cond_67
    const/16 v16, 0x0

    move/from16 v8, v16

    move v15, v8

    :goto_6c
    add-int v17, v10, v8

    .line 141
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v19, v10

    add-int v10, v17, v18

    if-le v10, v5, :cond_87

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v10

    if-nez v10, :cond_87

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v10

    .line 148
    iget v11, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int/2addr v11, v9

    move/from16 v19, v10

    :cond_87
    add-int v9, v19, v8

    .line 151
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 152
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v11

    if-le v9, v7, :cond_96

    move v7, v9

    :cond_96
    add-int/2addr v8, v15

    .line 159
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v8, v9

    add-int v19, v19, v8

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_aa

    add-int/2addr v7, v15

    :cond_aa
    move v9, v10

    move/from16 v10, v19

    :goto_ad
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 169
    :cond_b0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v7, v5

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v9, v5

    .line 172
    invoke-static {v1, v2, v7}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v1

    .line 173
    invoke-static {v3, v4, v9}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v2

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setItemSpacing(I)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return-void
.end method

.method protected setLineSpacing(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return-void
.end method
