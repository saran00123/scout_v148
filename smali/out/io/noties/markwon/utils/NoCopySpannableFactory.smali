.class public Lio/noties/markwon/utils/NoCopySpannableFactory;
.super Landroid/text/Spannable$Factory;
.source "NoCopySpannableFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/utils/NoCopySpannableFactory$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/text/Spannable$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/noties/markwon/utils/NoCopySpannableFactory;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 18
    invoke-static {}, Lio/noties/markwon/utils/NoCopySpannableFactory$Holder;->access$000()Lio/noties/markwon/utils/NoCopySpannableFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 3

    .line 23
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_7

    .line 24
    check-cast p1, Landroid/text/Spannable;

    goto :goto_d

    .line 25
    :cond_7
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    :goto_d
    return-object p1
.end method
