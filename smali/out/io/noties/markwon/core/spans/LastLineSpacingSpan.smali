.class public Lio/noties/markwon/core/spans/LastLineSpacingSpan;
.super Ljava/lang/Object;
.source "LastLineSpacingSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final spacing:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lio/noties/markwon/core/spans/LastLineSpacingSpan;->spacing:I

    return-void
.end method

.method public static create(I)Lio/noties/markwon/core/spans/LastLineSpacingSpan;
    .registers 2
    .param p0    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    new-instance v0, Lio/noties/markwon/core/spans/LastLineSpacingSpan;

    invoke-direct {v0, p0}, Lio/noties/markwon/core/spans/LastLineSpacingSpan;-><init>(I)V

    return-object v0
.end method

.method private static selfEnd(ILjava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3

    .line 40
    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p0, :cond_e

    sub-int/2addr p0, p2

    if-ne p1, p0, :cond_d

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :cond_e
    :goto_e
    return p2
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 7

    .line 28
    invoke-static {p3, p1, p0}, Lio/noties/markwon/core/spans/LastLineSpacingSpan;->selfEnd(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 30
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p0, Lio/noties/markwon/core/spans/LastLineSpacingSpan;->spacing:I

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 31
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p0, Lio/noties/markwon/core/spans/LastLineSpacingSpan;->spacing:I

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_14
    return-void
.end method
