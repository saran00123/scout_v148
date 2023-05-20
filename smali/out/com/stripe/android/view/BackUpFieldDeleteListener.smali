.class public final Lcom/stripe/android/view/BackUpFieldDeleteListener;
.super Ljava/lang/Object;
.source "BackUpFieldDeleteListener.kt"

# interfaces
.implements Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/view/BackUpFieldDeleteListener;",
        "Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;",
        "backUpTarget",
        "Lcom/stripe/android/view/StripeEditText;",
        "(Lcom/stripe/android/view/StripeEditText;)V",
        "onDeleteEmpty",
        "",
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
.field private final backUpTarget:Lcom/stripe/android/view/StripeEditText;


# direct methods
.method public constructor <init>(Lcom/stripe/android/view/StripeEditText;)V
    .registers 3
    .param p1    # Lcom/stripe/android/view/StripeEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "backUpTarget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/BackUpFieldDeleteListener;->backUpTarget:Lcom/stripe/android/view/StripeEditText;

    return-void
.end method


# virtual methods
.method public onDeleteEmpty()V
    .registers 6

    .line 16
    iget-object v0, p0, Lcom/stripe/android/view/BackUpFieldDeleteListener;->backUpTarget:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const-string v0, ""

    .line 17
    :goto_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_39

    .line 18
    iget-object v1, p0, Lcom/stripe/android/view/BackUpFieldDeleteListener;->backUpTarget:Lcom/stripe/android/view/StripeEditText;

    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-eqz v0, :cond_31

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v1, v0}, Lcom/stripe/android/view/StripeEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 19
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/stripe/android/view/BackUpFieldDeleteListener;->backUpTarget:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeEditText;->requestFocus()Z

    .line 23
    iget-object v0, p0, Lcom/stripe/android/view/BackUpFieldDeleteListener;->backUpTarget:Lcom/stripe/android/view/StripeEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->setSelection(I)V

    return-void
.end method
