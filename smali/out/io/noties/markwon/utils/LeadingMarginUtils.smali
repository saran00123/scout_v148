.class public abstract Lio/noties/markwon/utils/LeadingMarginUtils;
.super Ljava/lang/Object;
.source "LeadingMarginUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static selfEnd(ILjava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 4

    .line 13
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static selfStart(ILjava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 4

    .line 9
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
