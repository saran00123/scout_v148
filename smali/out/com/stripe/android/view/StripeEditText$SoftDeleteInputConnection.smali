.class final Lcom/stripe/android/view/StripeEditText$SoftDeleteInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "StripeEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/StripeEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SoftDeleteInputConnection"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/android/view/StripeEditText$SoftDeleteInputConnection;",
        "Landroid/view/inputmethod/InputConnectionWrapper;",
        "target",
        "Landroid/view/inputmethod/InputConnection;",
        "mutable",
        "",
        "deleteEmptyListener",
        "Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;",
        "(Landroid/view/inputmethod/InputConnection;ZLcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V",
        "deleteSurroundingText",
        "beforeLength",
        "",
        "afterLength",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final deleteEmptyListener:Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;ZLcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V
    .registers 5
    .param p1    # Landroid/view/inputmethod/InputConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object p3, p0, Lcom/stripe/android/view/StripeEditText$SoftDeleteInputConnection;->deleteEmptyListener:Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 254
    invoke-virtual {p0, v1, v0}, Lcom/stripe/android/view/StripeEditText$SoftDeleteInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "getTextBeforeCursor(1, 0)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    :cond_12
    if-eqz v0, :cond_1b

    .line 255
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText$SoftDeleteInputConnection;->deleteEmptyListener:Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;->onDeleteEmpty()V

    .line 257
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method
