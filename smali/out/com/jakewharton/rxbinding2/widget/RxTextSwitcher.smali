.class public final Lcom/jakewharton/rxbinding2/widget/RxTextSwitcher;
.super Ljava/lang/Object;
.source "RxTextSwitcher.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static currentText(Landroid/widget/TextSwitcher;)Lio/reactivex/functions/Consumer;
    .registers 2
    .param p0    # Landroid/widget/TextSwitcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextSwitcher;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 40
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/RxTextSwitcher$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/widget/RxTextSwitcher$2;-><init>(Landroid/widget/TextSwitcher;)V

    return-object v0
.end method

.method public static text(Landroid/widget/TextSwitcher;)Lio/reactivex/functions/Consumer;
    .registers 2
    .param p0    # Landroid/widget/TextSwitcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextSwitcher;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 24
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/RxTextSwitcher$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/widget/RxTextSwitcher$1;-><init>(Landroid/widget/TextSwitcher;)V

    return-object v0
.end method
