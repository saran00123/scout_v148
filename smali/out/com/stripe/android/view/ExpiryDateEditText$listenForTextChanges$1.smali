.class public final Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;
.super Lcom/stripe/android/view/StripeTextWatcher;
.source "ExpiryDateEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/ExpiryDateEditText;->listenForTextChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J*\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\tH\u0016J*\u0010\u0016\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "com/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1",
        "Lcom/stripe/android/view/StripeTextWatcher;",
        "expirationDate",
        "Lcom/stripe/android/model/ExpirationDate$Unvalidated;",
        "formattedDate",
        "",
        "ignoreChanges",
        "",
        "latestChangeStart",
        "",
        "latestInsertionSize",
        "newCursorPosition",
        "Ljava/lang/Integer;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field private expirationDate:Lcom/stripe/android/model/ExpirationDate$Unvalidated;

.field private formattedDate:Ljava/lang/String;

.field private ignoreChanges:Z

.field private latestChangeStart:I

.field private latestInsertionSize:I

.field private newCursorPosition:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/stripe/android/view/ExpiryDateEditText;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/ExpiryDateEditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-direct {p0}, Lcom/stripe/android/view/StripeTextWatcher;-><init>()V

    .line 82
    new-instance p1, Lcom/stripe/android/model/ExpirationDate$Unvalidated;

    const-string v0, ""

    invoke-direct {p1, v0, v0}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->expirationDate:Lcom/stripe/android/model/ExpirationDate$Unvalidated;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 162
    iget-boolean p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->ignoreChanges:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->ignoreChanges:Z

    .line 167
    iget-object v0, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/ExpiryDateEditText;->isLastKeyDelete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->formattedDate:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 168
    iget-object v2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/stripe/android/view/ExpiryDateEditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->newCursorPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_37

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 170
    iget-object v2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/ExpiryDateEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/stripe/android/view/ExpiryDateEditText;->setSelection(I)V

    .line 174
    :cond_37
    iput-boolean v1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->ignoreChanges:Z

    .line 181
    iget-object v0, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->expirationDate:Lcom/stripe/android/model/ExpirationDate$Unvalidated;

    invoke-virtual {v0}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->getMonth()Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->expirationDate:Lcom/stripe/android/model/ExpirationDate$Unvalidated;

    invoke-virtual {v2}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->getYear()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_56

    iget-object v3, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->expirationDate:Lcom/stripe/android/model/ExpirationDate$Unvalidated;

    invoke-virtual {v3}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->isMonthValid()Z

    move-result v3

    if-nez v3, :cond_56

    move v3, p1

    goto :goto_57

    :cond_56
    move v3, v1

    .line 189
    :goto_57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_8a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_8a

    .line 190
    iget-object v1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/ExpiryDateEditText;->isDateValid()Z

    move-result v1

    .line 191
    iget-object v3, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-static {v3, v0, v2}, Lcom/stripe/android/view/ExpiryDateEditText;->access$updateInputValues(Lcom/stripe/android/view/ExpiryDateEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/ExpiryDateEditText;->isDateValid()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    if-nez v1, :cond_8f

    .line 195
    iget-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/ExpiryDateEditText;->isDateValid()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 196
    iget-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/ExpiryDateEditText;->getCompletionCallback$stripe_release()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_8f

    .line 199
    :cond_8a
    iget-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-static {p1, v1}, Lcom/stripe/android/view/ExpiryDateEditText;->access$setDateValid$p(Lcom/stripe/android/view/ExpiryDateEditText;Z)V

    .line 202
    :cond_8f
    :goto_8f
    iget-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {p1, v3}, Lcom/stripe/android/view/ExpiryDateEditText;->setShouldShowError(Z)V

    const/4 p1, 0x0

    .line 204
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->formattedDate:Ljava/lang/String;

    .line 205
    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->newCursorPosition:Ljava/lang/Integer;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 91
    iget-boolean p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->ignoreChanges:Z

    if-eqz p1, :cond_5

    return-void

    .line 94
    :cond_5
    iput p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestChangeStart:I

    .line 95
    iput p4, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestInsertionSize:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 99
    iget-boolean p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->ignoreChanges:Z

    if-eqz p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_c

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    const-string p2, ""

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    move-object p1, p2

    .line 106
    :goto_13
    check-cast p1, Ljava/lang/CharSequence;

    new-instance p3, Lkotlin/text/Regex;

    const-string p4, "/"

    invoke-direct {p3, p4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_52

    iget p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestChangeStart:I

    if-nez p2, :cond_52

    iget p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestInsertionSize:I

    if-ne p2, v1, :cond_52

    .line 111
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x30

    if-eq p2, p3, :cond_74

    const/16 v2, 0x31

    if-eq p2, v2, :cond_74

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    iget p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestInsertionSize:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestInsertionSize:I

    goto :goto_74

    .line 122
    :cond_52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v0, :cond_74

    iget p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestChangeStart:I

    if-ne p2, v0, :cond_74

    iget p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestInsertionSize:I

    if-nez p2, :cond_74

    if-eqz p1, :cond_6c

    .line 128
    invoke-virtual {p1, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_74

    :cond_6c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_74
    :goto_74
    sget-object p2, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->Companion:Lcom/stripe/android/model/ExpirationDate$Unvalidated$Companion;

    invoke-virtual {p2, p1}, Lcom/stripe/android/model/ExpirationDate$Unvalidated$Companion;->create(Ljava/lang/String;)Lcom/stripe/android/model/ExpirationDate$Unvalidated;

    move-result-object p2

    .line 133
    iput-object p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->expirationDate:Lcom/stripe/android/model/ExpirationDate$Unvalidated;

    .line 136
    invoke-virtual {p2}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->isMonthValid()Z

    move-result p3

    xor-int/2addr p3, v1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {p2}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p2}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_9d

    iget v2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestInsertionSize:I

    if-lez v2, :cond_9d

    if-eqz p3, :cond_a3

    :cond_9d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v0, :cond_a6

    .line 146
    :cond_a3
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_a6
    invoke-virtual {p2}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->getYear()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "formattedDateBuilder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->this$0:Lcom/stripe/android/view/ExpiryDateEditText;

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    .line 154
    iget p4, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestChangeStart:I

    .line 155
    iget v0, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->latestInsertionSize:I

    .line 156
    invoke-static {}, Lcom/stripe/android/view/ExpiryDateEditText;->access$Companion()Lcom/stripe/android/view/ExpiryDateEditText$Companion;

    const/4 v1, 0x5

    .line 152
    invoke-virtual {p2, p3, p4, v0, v1}, Lcom/stripe/android/view/ExpiryDateEditText;->updateSelectionIndex$stripe_release(IIII)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->newCursorPosition:Ljava/lang/Integer;

    .line 158
    iput-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;->formattedDate:Ljava/lang/String;

    return-void
.end method
