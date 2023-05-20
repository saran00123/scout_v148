.class public Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DefaultItemDecoration.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x4

    .line 42
    invoke-direct {p0, p1, v0, v0}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 51
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    int-to-float p2, p3

    div-float/2addr p2, v0

    .line 52
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    .line 53
    new-instance p2, Lcom/yanzhenjie/recyclerview/widget/ColorDrawer;

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-direct {p2, p1, p3, v0}, Lcom/yanzhenjie/recyclerview/widget/ColorDrawer;-><init>(III)V

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroid/view/View;III)V
    .registers 10

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstRaw(IIII)Z

    move-result v1

    .line 273
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastRaw(IIII)Z

    move-result v2

    .line 274
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstColumn(IIII)Z

    move-result v3

    .line 275
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastColumn(IIII)Z

    move-result p3

    const/4 p5, 0x1

    if-ne p4, p5, :cond_38

    if-eqz v1, :cond_1a

    if-eqz p3, :cond_1a

    goto/16 :goto_d2

    :cond_1a
    if-eqz v3, :cond_23

    .line 281
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d2

    :cond_23
    if-eqz p3, :cond_2c

    .line 283
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d2

    .line 285
    :cond_2c
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 286
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d2

    :cond_38
    if-eqz v3, :cond_48

    if-eqz v1, :cond_48

    .line 290
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 291
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d2

    :cond_48
    if-eqz v3, :cond_58

    if-eqz v2, :cond_58

    .line 293
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 294
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d2

    :cond_58
    if-eqz p3, :cond_67

    if-eqz v1, :cond_67

    .line 296
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 297
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d2

    :cond_67
    if-eqz p3, :cond_76

    if-eqz v2, :cond_76

    .line 299
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 300
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d2

    :cond_76
    if-eqz v3, :cond_88

    .line 302
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 303
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 304
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d2

    :cond_88
    if-eqz p3, :cond_9a

    .line 306
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 307
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 308
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d2

    :cond_9a
    if-eqz v1, :cond_ac

    .line 310
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 311
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 312
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d2

    :cond_ac
    if-eqz v2, :cond_be

    .line 314
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 315
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 316
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d2

    .line 318
    :cond_be
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 319
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 320
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 321
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    :goto_d2
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroid/view/View;III)V
    .registers 10

    const/4 v0, 0x1

    .line 327
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstRaw(IIII)Z

    move-result v1

    .line 328
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastRaw(IIII)Z

    move-result v2

    .line 329
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstColumn(IIII)Z

    move-result v3

    .line 330
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastColumn(IIII)Z

    move-result p3

    if-ne p4, v0, :cond_37

    if-eqz v1, :cond_19

    if-eqz v2, :cond_19

    goto/16 :goto_d1

    :cond_19
    if-eqz v1, :cond_22

    .line 336
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d1

    :cond_22
    if-eqz v2, :cond_2b

    .line 338
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d1

    .line 340
    :cond_2b
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 341
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d1

    :cond_37
    if-eqz v1, :cond_47

    if-eqz v3, :cond_47

    .line 345
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 346
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d1

    :cond_47
    if-eqz v1, :cond_57

    if-eqz p3, :cond_57

    .line 348
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 349
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_d1

    :cond_57
    if-eqz v2, :cond_66

    if-eqz v3, :cond_66

    .line 351
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 352
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d1

    :cond_66
    if-eqz v2, :cond_75

    if-eqz p3, :cond_75

    .line 354
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 355
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d1

    :cond_75
    if-eqz v1, :cond_87

    .line 357
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 358
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 359
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d1

    :cond_87
    if-eqz v2, :cond_99

    .line 361
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 362
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 363
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d1

    :cond_99
    if-eqz v3, :cond_ab

    .line 365
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 366
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 367
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d1

    :cond_ab
    if-eqz p3, :cond_bd

    .line 369
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 370
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 371
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_d1

    .line 373
    :cond_bd
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 374
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 375
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 376
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    :goto_d1
    return-void
.end method

.method private getOrientation(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .registers 3

    .line 155
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_b

    .line 156
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    return p1

    .line 157
    :cond_b
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_16

    .line 158
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method private getSpanCount(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .registers 3

    .line 164
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_b

    .line 165
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 166
    :cond_b
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_16

    .line 167
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method private isFirstColumn(IIII)Z
    .registers 6

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    if-ne p3, v0, :cond_7

    return v0

    .line 207
    :cond_7
    rem-int/2addr p2, p3

    if-nez p2, :cond_b

    move p4, v0

    :cond_b
    return p4

    :cond_c
    if-ge p2, p3, :cond_f

    move p4, v0

    :cond_f
    return p4
.end method

.method private isFirstRaw(IIII)Z
    .registers 6

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    if-ge p2, p3, :cond_7

    move p4, v0

    :cond_7
    return p4

    :cond_8
    if-ne p3, v0, :cond_b

    return v0

    .line 177
    :cond_b
    rem-int/2addr p2, p3

    if-nez p2, :cond_f

    move p4, v0

    :cond_f
    return p4
.end method

.method private isLastColumn(IIII)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    if-ne p3, v1, :cond_7

    return v1

    :cond_7
    add-int/2addr p2, v1

    .line 216
    rem-int/2addr p2, p3

    if-nez p2, :cond_c

    move v0, v1

    :cond_c
    return v0

    :cond_d
    if-ne p3, v1, :cond_14

    add-int/2addr p2, v1

    if-ne p2, p4, :cond_13

    move v0, v1

    :cond_13
    return v0

    .line 221
    :cond_14
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    .line 222
    div-int/2addr p4, p3

    if-lez p1, :cond_1c

    move p1, v1

    goto :goto_1d

    :cond_1c
    move p1, v0

    :goto_1d
    add-int/2addr p4, p1

    add-int/2addr p2, v1

    .line 224
    rem-int p1, p2, p3

    if-nez p1, :cond_28

    .line 226
    div-int/2addr p2, p3

    if-ne p4, p2, :cond_27

    move v0, v1

    :cond_27
    return v0

    :cond_28
    sub-int/2addr p2, p1

    .line 229
    div-int/2addr p2, p3

    add-int/2addr p2, v1

    if-ne p4, p2, :cond_2e

    move v0, v1

    :cond_2e
    return v0
.end method

.method private isLastRaw(IIII)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_26

    if-ne p3, v1, :cond_b

    add-int/2addr p2, v1

    if-ne p2, p4, :cond_a

    move v0, v1

    :cond_a
    return v0

    .line 186
    :cond_b
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    .line 187
    div-int/2addr p4, p3

    if-lez p1, :cond_13

    move p1, v1

    goto :goto_14

    :cond_13
    move p1, v0

    :goto_14
    add-int/2addr p4, p1

    add-int/2addr p2, v1

    .line 189
    rem-int p1, p2, p3

    if-nez p1, :cond_1f

    .line 191
    div-int/2addr p2, p3

    if-ne p4, p2, :cond_1e

    move v0, v1

    :cond_1e
    return v0

    :cond_1f
    sub-int/2addr p2, p1

    .line 194
    div-int/2addr p2, p3

    add-int/2addr p2, v1

    if-ne p4, p2, :cond_25

    move v0, v1

    :cond_25
    return v0

    :cond_26
    if-ne p3, v1, :cond_29

    return v1

    :cond_29
    add-int/2addr p2, v1

    .line 200
    rem-int/2addr p2, p3

    if-nez p2, :cond_2e

    move v0, v1

    :cond_2e
    return v0
.end method

.method private offsetHorizontal(Landroid/graphics/Rect;III)V
    .registers 9

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstRaw(IIII)Z

    move-result v1

    .line 78
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastRaw(IIII)Z

    move-result v2

    .line 79
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstColumn(IIII)Z

    move-result v3

    .line 80
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastColumn(IIII)Z

    move-result p2

    const/4 p4, 0x1

    if-ne p3, p4, :cond_35

    if-eqz v3, :cond_1d

    if-eqz p2, :cond_1d

    .line 84
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_94

    :cond_1d
    if-eqz v3, :cond_26

    .line 86
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, v0, v0, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_94

    :cond_26
    if-eqz p2, :cond_2f

    .line 88
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_94

    .line 90
    :cond_2f
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, p2, v0, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_35
    if-eqz v3, :cond_41

    if-eqz v1, :cond_41

    .line 94
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_41
    if-eqz v3, :cond_4d

    if-eqz v2, :cond_4d

    .line 96
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, v0, p2, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_4d
    if-eqz p2, :cond_59

    if-eqz v1, :cond_59

    .line 98
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_59
    if-eqz p2, :cond_65

    if-eqz v2, :cond_65

    .line 100
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_65
    if-eqz v3, :cond_6f

    .line 102
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, v0, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_6f
    if-eqz p2, :cond_79

    .line 104
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_79
    if-eqz v1, :cond_83

    .line 106
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_83
    if-eqz v2, :cond_8d

    .line 108
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    .line 110
    :cond_8d
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_94
    return-void
.end method

.method private offsetVertical(Landroid/graphics/Rect;III)V
    .registers 9

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstRaw(IIII)Z

    move-result v1

    .line 117
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastRaw(IIII)Z

    move-result v2

    .line 118
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstColumn(IIII)Z

    move-result v3

    .line 119
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastColumn(IIII)Z

    move-result p2

    const/4 p4, 0x0

    if-ne p3, v0, :cond_35

    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1d

    .line 123
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_94

    :cond_1d
    if-eqz v1, :cond_26

    .line 125
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p4, p4, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_94

    :cond_26
    if-eqz v2, :cond_2f

    .line 127
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p4, p2, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_94

    .line 129
    :cond_2f
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p4, p2, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_35
    if-eqz v1, :cond_41

    if-eqz v3, :cond_41

    .line 133
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_41
    if-eqz v1, :cond_4d

    if-eqz p2, :cond_4d

    .line 135
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_4d
    if-eqz v2, :cond_59

    if-eqz v3, :cond_59

    .line 137
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, p4, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_59
    if-eqz v2, :cond_65

    if-eqz p2, :cond_65

    .line 139
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_65
    if-eqz v1, :cond_6f

    .line 141
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_6f
    if-eqz v2, :cond_79

    .line 143
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_79
    if-eqz v3, :cond_83

    .line 145
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, p4, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    :cond_83
    if-eqz p2, :cond_8d

    .line 147
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_94

    .line 149
    :cond_8d
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_94
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    .line 60
    instance-of v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_23

    .line 61
    invoke-direct {p0, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->getOrientation(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v0

    .line 62
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    .line 63
    invoke-direct {p0, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p3

    .line 64
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->offsetVertical(Landroid/graphics/Rect;III)V

    goto :goto_2e

    .line 69
    :cond_1f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->offsetHorizontal(Landroid/graphics/Rect;III)V

    goto :goto_2e

    .line 71
    :cond_23
    instance-of p2, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_2e

    .line 72
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 238
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 240
    invoke-direct {p0, p3}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->getOrientation(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v0

    .line 241
    invoke-direct {p0, p3}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v7

    .line 242
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v8

    .line 244
    instance-of v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move v9, v2

    :goto_19
    if-ge v9, v8, :cond_38

    .line 247
    invoke-virtual {p3, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 249
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    move-object v1, p0

    move-object v2, p1

    move v5, v7

    move v6, v8

    .line 252
    invoke-direct/range {v1 .. v6}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/view/View;III)V

    goto :goto_35

    :cond_2e
    move-object v1, p0

    move-object v2, p1

    move v5, v7

    move v6, v8

    .line 254
    invoke-direct/range {v1 .. v6}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/view/View;III)V

    :goto_35
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 257
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_63

    .line 258
    :cond_3c
    instance-of p2, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_63

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_43
    if-ge v2, v8, :cond_60

    .line 261
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 262
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v0, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 263
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v0, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 264
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v0, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 265
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v0, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 267
    :cond_60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_63
    :goto_63
    return-void
.end method
