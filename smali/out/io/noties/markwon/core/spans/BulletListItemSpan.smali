.class public Lio/noties/markwon/core/spans/BulletListItemSpan;
.super Ljava/lang/Object;
.source "BulletListItemSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# static fields
.field private static final IS_NOUGAT:Z


# instance fields
.field private final circle:Landroid/graphics/RectF;

.field private final level:I

.field private final paint:Landroid/graphics/Paint;

.field private final rectangle:Landroid/graphics/Rect;

.field private theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-eq v1, v0, :cond_d

    const/16 v1, 0x19

    if-ne v1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 23
    :goto_e
    sput-boolean v0, Lio/noties/markwon/core/spans/BulletListItemSpan;->IS_NOUGAT:Z

    return-void
.end method

.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;I)V
    .registers 4
    .param p1    # Lio/noties/markwon/core/MarkwonTheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    .line 29
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->rectF()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->circle:Landroid/graphics/RectF;

    .line 30
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->rect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->rectangle:Landroid/graphics/Rect;

    .line 37
    iput-object p1, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 38
    iput p2, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 13

    if-eqz p11, :cond_c6

    .line 51
    invoke-static {p9, p8, p0}, Lio/noties/markwon/utils/LeadingMarginUtils;->selfStart(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_a

    goto/16 :goto_c6

    .line 55
    :cond_a
    iget-object p5, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 57
    iget-object p2, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget-object p5, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p5}, Lio/noties/markwon/core/MarkwonTheme;->applyListItemStyle(Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    .line 62
    :try_start_1a
    iget-object p5, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {p5}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result p5

    .line 67
    iget-object p7, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p7}, Landroid/graphics/Paint;->descent()F

    move-result p7

    iget-object p8, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p8}, Landroid/graphics/Paint;->ascent()F

    move-result p8

    sub-float/2addr p7, p8

    const/high16 p8, 0x3f000000    # 0.5f

    add-float/2addr p7, p8

    float-to-int p7, p7

    .line 69
    iget-object p9, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {p9, p7}, Lio/noties/markwon/core/MarkwonTheme;->getBulletWidth(I)I

    move-result p7

    sub-int p9, p5, p7

    .line 71
    div-int/lit8 p9, p9, 0x2

    .line 79
    sget-boolean p10, Lio/noties/markwon/core/spans/BulletListItemSpan;->IS_NOUGAT:Z

    if-eqz p10, :cond_61

    if-gez p4, :cond_4c

    .line 90
    invoke-virtual {p12}, Landroid/text/Layout;->getWidth()I

    move-result p10

    iget p11, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    mul-int/2addr p5, p11

    sub-int/2addr p10, p5

    sub-int p5, p3, p10

    goto :goto_50

    .line 92
    :cond_4c
    iget p10, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    mul-int/2addr p5, p10

    sub-int/2addr p5, p3

    :goto_50
    mul-int/2addr p9, p4

    add-int/2addr p3, p9

    mul-int p9, p4, p7

    add-int/2addr p9, p3

    .line 97
    invoke-static {p3, p9}, Ljava/lang/Math;->min(II)I

    move-result p10

    mul-int/2addr p4, p5

    add-int/2addr p10, p4

    .line 98
    invoke-static {p3, p9}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p3, p4

    goto :goto_6a

    :cond_61
    if-lez p4, :cond_65

    :goto_63
    add-int/2addr p3, p9

    goto :goto_67

    :cond_65
    sub-int/2addr p3, p5

    goto :goto_63

    :goto_67
    move p10, p3

    add-int p3, p10, p7

    .line 110
    :goto_6a
    iget-object p4, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->descent()F

    move-result p4

    iget-object p5, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->ascent()F

    move-result p5

    add-float/2addr p4, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    add-float/2addr p4, p8

    float-to-int p4, p4

    add-int/2addr p6, p4

    div-int/lit8 p4, p7, 0x2

    sub-int/2addr p6, p4

    add-int/2addr p7, p6

    .line 113
    iget p4, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    if-eqz p4, :cond_9f

    iget p4, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    const/4 p5, 0x1

    if-ne p4, p5, :cond_8b

    goto :goto_9f

    .line 126
    :cond_8b
    iget-object p4, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->rectangle:Landroid/graphics/Rect;

    invoke-virtual {p4, p10, p6, p3, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 128
    iget-object p3, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object p3, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->rectangle:Landroid/graphics/Rect;

    iget-object p4, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_bd

    .line 116
    :cond_9f
    :goto_9f
    iget-object p4, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->circle:Landroid/graphics/RectF;

    int-to-float p5, p10

    int-to-float p6, p6

    int-to-float p3, p3

    int-to-float p7, p7

    invoke-virtual {p4, p5, p6, p3, p7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    iget p3, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    if-nez p3, :cond_af

    .line 119
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_b1

    .line 120
    :cond_af
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 121
    :goto_b1
    iget-object p4, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object p3, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->circle:Landroid/graphics/RectF;

    iget-object p4, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_bd
    .catchall {:try_start_1a .. :try_end_bd} :catchall_c1

    .line 134
    :goto_bd
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_c1
    move-exception p3

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 135
    throw p3

    :cond_c6
    :goto_c6
    return-void
.end method

.method public getLeadingMargin(Z)I
    .registers 2

    .line 43
    iget-object p1, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {p1}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result p1

    return p1
.end method
