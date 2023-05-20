.class public Lcom/pilotlab/rollereye/CustomerView/CodeEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "CodeEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/CodeEditText$OnTextFinishListener;
    }
.end annotation


# instance fields
.field private mMaxLength:I

.field private mOnInputFinishListener:Lcom/pilotlab/rollereye/CustomerView/CodeEditText$OnTextFinishListener;

.field private final mRect:Landroid/graphics/Rect;

.field private mStrokeDrawable:Landroid/graphics/drawable/Drawable;

.field private mStrokeHeight:I

.field private mStrokePadding:I

.field private mStrokeWidth:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    .line 32
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mMaxLength:I

    const/16 v1, 0x14

    .line 38
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokePadding:I

    .line 41
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    .line 57
    sget-object v1, Lcom/pilotlab/rollereye/R$styleable;->CodeEditText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_1d
    if-ge v2, p2, :cond_5c

    .line 60
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v5, 0x1

    if-ne v3, v5, :cond_30

    .line 62
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeHeight:I

    goto :goto_59

    :cond_30
    if-ne v3, v0, :cond_3a

    .line 64
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeWidth:I

    goto :goto_59

    :cond_3a
    const/4 v4, 0x3

    if-ne v3, v4, :cond_47

    const/high16 v4, 0x41a00000    # 20.0f

    .line 67
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokePadding:I

    goto :goto_59

    :cond_47
    if-nez v3, :cond_50

    .line 70
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_59

    :cond_50
    const/4 v4, 0x2

    if-ne v3, v4, :cond_59

    .line 73
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mMaxLength:I

    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 76
    :cond_5c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_72

    .line 82
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mMaxLength:I

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setMaxLength(I)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setLongClickable(Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setBackgroundColor(I)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setCursorVisible(Z)V

    return-void

    .line 79
    :cond_72
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "stroke drawable not allowed to be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private drawStrokeBackground(Landroid/graphics/Canvas;)V
    .registers 9

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 155
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 156
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeWidth:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 157
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeHeight:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move v2, v1

    .line 160
    :goto_17
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mMaxLength:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_46

    .line 161
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 162
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    new-array v4, v4, [I

    const v6, 0x101009e

    aput v6, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 163
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokePadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 167
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 169
    :cond_46
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 170
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 175
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeWidth:I

    mul-int/2addr v3, v0

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokePadding:I

    mul-int/2addr v5, v0

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 176
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeWidth:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    new-array v2, v4, [I

    const v3, 0x101009c

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .registers 11

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_5b

    .line 192
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 194
    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mTextColor:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 196
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v2, v7, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 198
    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeWidth:I

    div-int/lit8 v7, v6, 0x2

    iget v8, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokePadding:I

    add-int/2addr v6, v8

    mul-int/2addr v6, v3

    add-int/2addr v7, v6

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int/2addr v7, v6

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    iget-object v8, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    iget-object v8, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v7, v7

    int-to-float v6, v6

    .line 200
    invoke-virtual {p1, v4, v7, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 202
    :cond_5b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private setMaxLength(I)V
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_11

    const/4 v1, 0x1

    .line 104
    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_16

    .line 106
    :cond_11
    new-array p1, v0, [Landroid/text/InputFilter;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_16
    return-void
.end method


# virtual methods
.method public hideSoftInput()V
    .registers 4

    .line 224
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_16

    .line 226
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_16
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 138
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mTextColor:I

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setTextColor(I)V

    .line 140
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mTextColor:I

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setTextColor(I)V

    .line 143
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->drawStrokeBackground(Landroid/graphics/Canvas;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 112
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onMeasure(II)V

    .line 114
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getMeasuredWidth()I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getMeasuredHeight()I

    move-result v1

    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 117
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 120
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeHeight:I

    if-ge v1, v2, :cond_18

    move v1, v2

    .line 125
    :cond_18
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokeWidth:I

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mMaxLength:I

    mul-int/2addr v2, v3

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mStrokePadding:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_26

    move v0, v2

    .line 130
    :cond_26
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 131
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 211
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 213
    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mMaxLength:I

    if-ne p1, p2, :cond_23

    .line 214
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->hideSoftInput()V

    .line 215
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mOnInputFinishListener:Lcom/pilotlab/rollereye/CustomerView/CodeEditText$OnTextFinishListener;

    if-eqz p1, :cond_23

    .line 216
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->getEditableText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mMaxLength:I

    invoke-interface {p1, p2, p3}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText$OnTextFinishListener;->onTextFinish(Ljava/lang/CharSequence;I)V

    :cond_23
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setOnTextFinishListener(Lcom/pilotlab/rollereye/CustomerView/CodeEditText$OnTextFinishListener;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->mOnInputFinishListener:Lcom/pilotlab/rollereye/CustomerView/CodeEditText$OnTextFinishListener;

    return-void
.end method
