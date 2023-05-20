.class public Lio/noties/markwon/utils/Dip;
.super Ljava/lang/Object;
.source "Dip.java"


# instance fields
.field private final density:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lio/noties/markwon/utils/Dip;->density:F

    return-void
.end method

.method public static create(F)Lio/noties/markwon/utils/Dip;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 16
    new-instance v0, Lio/noties/markwon/utils/Dip;

    invoke-direct {v0, p0}, Lio/noties/markwon/utils/Dip;-><init>(F)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lio/noties/markwon/utils/Dip;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 11
    new-instance v0, Lio/noties/markwon/utils/Dip;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, p0}, Lio/noties/markwon/utils/Dip;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public toPx(I)I
    .registers 3

    int-to-float p1, p1

    .line 26
    iget v0, p0, Lio/noties/markwon/utils/Dip;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
