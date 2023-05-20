.class public final Lcom/stripe/android/view/BecsDebitBsbEditText$1;
.super Lcom/stripe/android/view/StripeTextWatcher;
.source "BecsDebitBsbEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/BecsDebitBsbEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBecsDebitBsbEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BecsDebitBsbEditText.kt\ncom/stripe/android/view/BecsDebitBsbEditText$1\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,146:1\n398#2:147\n471#2,5:148\n*E\n*S KotlinDebug\n*F\n+ 1 BecsDebitBsbEditText.kt\ncom/stripe/android/view/BecsDebitBsbEditText$1\n*L\n71#1:147\n71#1,5:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J*\u0010\r\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "com/stripe/android/view/BecsDebitBsbEditText$1",
        "Lcom/stripe/android/view/StripeTextWatcher;",
        "formattedBsb",
        "",
        "ignoreChanges",
        "",
        "newCursorPosition",
        "",
        "Ljava/lang/Integer;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "onTextChanged",
        "",
        "start",
        "before",
        "count",
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
.field private formattedBsb:Ljava/lang/String;

.field private ignoreChanges:Z

.field private newCursorPosition:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/BecsDebitBsbEditText;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-direct {p0}, Lcom/stripe/android/view/StripeTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 77
    iget-boolean p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->ignoreChanges:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->ignoreChanges:Z

    .line 82
    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->isLastKeyDelete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->formattedBsb:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 83
    iget-object v2, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->newCursorPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_37

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 85
    iget-object v2, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setSelection(I)V

    :cond_37
    const/4 v0, 0x0

    .line 88
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->formattedBsb:Ljava/lang/String;

    .line 89
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->newCursorPosition:Ljava/lang/Integer;

    .line 90
    iput-boolean v1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->ignoreChanges:Z

    .line 92
    iget-object v2, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-static {v2}, Lcom/stripe/android/view/BecsDebitBsbEditText;->access$getBank$p(Lcom/stripe/android/view/BecsDebitBsbEditText;)Lcom/stripe/android/view/BecsDebitBanks$Bank;

    move-result-object v2

    if-nez v2, :cond_5e

    iget-object v2, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/stripe/android/view/BecsDebitBsbEditText;->access$Companion()Lcom/stripe/android/view/BecsDebitBsbEditText$Companion;

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5e

    move v2, p1

    goto :goto_5f

    :cond_5e
    move v2, v1

    .line 93
    :goto_5f
    iget-object v3, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    if-eqz v2, :cond_6d

    .line 94
    invoke-virtual {v3}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/stripe/android/R$string;->becs_widget_bsb_invalid:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_6d
    invoke-virtual {v3, v0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setErrorMessage$stripe_release(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getErrorMessage$stripe_release()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_79

    goto :goto_7a

    :cond_79
    move p1, v1

    :goto_7a
    invoke-virtual {v0, p1}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setShouldShowError(Z)V

    .line 100
    iget-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getOnBankChangedCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-static {v0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->access$getBank$p(Lcom/stripe/android/view/BecsDebitBsbEditText;)Lcom/stripe/android/view/BecsDebitBanks$Bank;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-static {p1, v2}, Lcom/stripe/android/view/BecsDebitBsbEditText;->access$updateIcon(Lcom/stripe/android/view/BecsDebitBsbEditText;Z)V

    .line 103
    iget-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-static {p1}, Lcom/stripe/android/view/BecsDebitBsbEditText;->access$isComplete$p(Lcom/stripe/android/view/BecsDebitBsbEditText;)Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 104
    iget-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getOnCompletedCallback()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_a2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 62
    iget-boolean p3, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->ignoreChanges:Z

    if-eqz p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x4

    if-le p2, p3, :cond_9

    return-void

    :cond_9
    const/4 p2, 0x0

    if-eqz p1, :cond_11

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_11
    move-object p1, p2

    :goto_12
    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const-string p1, ""

    .line 147
    :goto_17
    check-cast p1, Ljava/lang/CharSequence;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p3, Ljava/lang/Appendable;

    const/4 p4, 0x0

    .line 148
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_25
    if-ge p4, v0, :cond_37

    .line 149
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_34
    add-int/lit8 p4, p4, 0x1

    goto :goto_25

    .line 152
    :cond_37
    check-cast p3, Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "filterTo(StringBuilder(), predicate).toString()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p3, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->this$0:Lcom/stripe/android/view/BecsDebitBsbEditText;

    invoke-static {p3, p1}, Lcom/stripe/android/view/BecsDebitBsbEditText;->access$formatBsb(Lcom/stripe/android/view/BecsDebitBsbEditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->formattedBsb:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->formattedBsb:Ljava/lang/String;

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_56
    iput-object p2, p0, Lcom/stripe/android/view/BecsDebitBsbEditText$1;->newCursorPosition:Ljava/lang/Integer;

    return-void
.end method
