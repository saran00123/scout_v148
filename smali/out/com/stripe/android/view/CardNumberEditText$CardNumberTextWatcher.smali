.class final Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;
.super Lcom/stripe/android/view/StripeTextWatcher;
.source "CardNumberEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/CardNumberEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CardNumberTextWatcher"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J*\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0002J(\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0004H\u0002J*\u0010#\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000eH\u0016J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0008\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;",
        "Lcom/stripe/android/view/StripeTextWatcher;",
        "(Lcom/stripe/android/view/CardNumberEditText;)V",
        "beforeCardNumber",
        "Lcom/stripe/android/cards/CardNumber$Unvalidated;",
        "digitsAdded",
        "",
        "getDigitsAdded",
        "()Z",
        "formattedNumber",
        "",
        "ignoreChanges",
        "isPastedPan",
        "latestChangeStart",
        "",
        "latestInsertionSize",
        "newCursorPosition",
        "Ljava/lang/Integer;",
        "shouldUpdateAfterChange",
        "getShouldUpdateAfterChange",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "count",
        "after",
        "isComplete",
        "wasCardNumberValid",
        "startPosition",
        "previousCount",
        "currentCount",
        "cardNumber",
        "onTextChanged",
        "before",
        "shouldQueryRepository",
        "accountRange",
        "Lcom/stripe/android/model/AccountRange;",
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
.field private beforeCardNumber:Lcom/stripe/android/cards/CardNumber$Unvalidated;

.field private formattedNumber:Ljava/lang/String;

.field private ignoreChanges:Z

.field private isPastedPan:Z

.field private latestChangeStart:I

.field private latestInsertionSize:I

.field private newCursorPosition:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/stripe/android/view/CardNumberEditText;


# direct methods
.method public constructor <init>(Lcom/stripe/android/view/CardNumberEditText;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-direct {p0}, Lcom/stripe/android/view/StripeTextWatcher;-><init>()V

    .line 303
    invoke-static {p1}, Lcom/stripe/android/view/CardNumberEditText;->access$getUnvalidatedCardNumber$p(Lcom/stripe/android/view/CardNumberEditText;)Lcom/stripe/android/cards/CardNumber$Unvalidated;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->beforeCardNumber:Lcom/stripe/android/cards/CardNumber$Unvalidated;

    return-void
.end method

.method private final getDigitsAdded()Z
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {v0}, Lcom/stripe/android/view/CardNumberEditText;->access$getUnvalidatedCardNumber$p(Lcom/stripe/android/view/CardNumberEditText;)Lcom/stripe/android/cards/CardNumber$Unvalidated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->beforeCardNumber:Lcom/stripe/android/cards/CardNumber$Unvalidated;

    invoke-virtual {v1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getLength()I

    move-result v1

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private final getShouldUpdateAfterChange()Z
    .registers 2

    .line 401
    invoke-direct {p0}, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->getDigitsAdded()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardNumberEditText;->isLastKeyDelete()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    iget-object v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->formattedNumber:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private final isComplete(Z)Z
    .registers 2

    if-nez p1, :cond_20

    .line 416
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {p1}, Lcom/stripe/android/view/CardNumberEditText;->access$getUnvalidatedCardNumber$p(Lcom/stripe/android/view/CardNumberEditText;)Lcom/stripe/android/cards/CardNumber$Unvalidated;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->isMaxLength()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {p1}, Lcom/stripe/android/view/CardNumberEditText;->access$isValid$p(Lcom/stripe/android/view/CardNumberEditText;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {p1}, Lcom/stripe/android/view/CardNumberEditText;->access$getAccountRange$p(Lcom/stripe/android/view/CardNumberEditText;)Lcom/stripe/android/model/AccountRange;

    move-result-object p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method private final isPastedPan(IIILcom/stripe/android/cards/CardNumber$Unvalidated;)Z
    .registers 5

    if-le p3, p2, :cond_12

    if-nez p1, :cond_12

    .line 431
    invoke-virtual {p4}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getNormalized()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xe

    if-lt p1, p2, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private final shouldQueryRepository(Lcom/stripe/android/model/AccountRange;)Z
    .registers 4

    .line 436
    invoke-virtual {p1}, Lcom/stripe/android/model/AccountRange;->getBrand()Lcom/stripe/android/model/CardBrand;

    move-result-object p1

    sget-object v0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/android/model/CardBrand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v1, 0x2

    if-eq p1, v1, :cond_13

    const/4 v0, 0x0

    :cond_13
    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 362
    iget-boolean p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->ignoreChanges:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 366
    iput-boolean p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->ignoreChanges:Z

    .line 368
    invoke-direct {p0}, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->getShouldUpdateAfterChange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 369
    iget-object v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    iget-object v2, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->formattedNumber:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/stripe/android/view/CardNumberEditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->newCursorPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_33

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 371
    iget-object v2, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/CardNumberEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/stripe/android/view/CardNumberEditText;->setSelection(I)V

    :cond_33
    const/4 v0, 0x0

    .line 375
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->formattedNumber:Ljava/lang/String;

    .line 376
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->newCursorPosition:Ljava/lang/Integer;

    .line 378
    iput-boolean v1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->ignoreChanges:Z

    .line 380
    iget-object v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {v0}, Lcom/stripe/android/view/CardNumberEditText;->access$getUnvalidatedCardNumber$p(Lcom/stripe/android/view/CardNumberEditText;)Lcom/stripe/android/cards/CardNumber$Unvalidated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getLength()I

    move-result v0

    iget-object v2, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/CardNumberEditText;->getPanLength$stripe_release()I

    move-result v2

    if-ne v0, v2, :cond_93

    .line 381
    iget-object v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardNumberEditText;->isCardNumberValid()Z

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {v1}, Lcom/stripe/android/view/CardNumberEditText;->access$isValid$p(Lcom/stripe/android/view/CardNumberEditText;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/stripe/android/view/CardNumberEditText;->access$setCardNumberValid$p(Lcom/stripe/android/view/CardNumberEditText;Z)V

    .line 383
    iget-object v1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {v1}, Lcom/stripe/android/view/CardNumberEditText;->access$isValid$p(Lcom/stripe/android/view/CardNumberEditText;)Z

    move-result v2

    xor-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/stripe/android/view/CardNumberEditText;->setShouldShowError(Z)V

    .line 385
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {p1}, Lcom/stripe/android/view/CardNumberEditText;->access$getAccountRange$p(Lcom/stripe/android/view/CardNumberEditText;)Lcom/stripe/android/model/AccountRange;

    move-result-object p1

    if-nez p1, :cond_83

    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {p1}, Lcom/stripe/android/view/CardNumberEditText;->access$getUnvalidatedCardNumber$p(Lcom/stripe/android/view/CardNumberEditText;)Lcom/stripe/android/cards/CardNumber$Unvalidated;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->isValidLuhn()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 387
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardNumberEditText;->onCardMetadataLoadedTooSlow$stripe_release()V

    .line 390
    :cond_83
    invoke-direct {p0, v0}, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->isComplete(Z)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 391
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardNumberEditText;->getCompletionCallback$stripe_release()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_a1

    .line 394
    :cond_93
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {p1}, Lcom/stripe/android/view/CardNumberEditText;->access$isValid$p(Lcom/stripe/android/view/CardNumberEditText;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/stripe/android/view/CardNumberEditText;->access$setCardNumberValid$p(Lcom/stripe/android/view/CardNumberEditText;Z)V

    .line 396
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/CardNumberEditText;->setShouldShowError(Z)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 308
    iget-boolean p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->ignoreChanges:Z

    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 309
    iput-boolean p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->isPastedPan:Z

    .line 310
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {p1}, Lcom/stripe/android/view/CardNumberEditText;->access$getUnvalidatedCardNumber$p(Lcom/stripe/android/view/CardNumberEditText;)Lcom/stripe/android/cards/CardNumber$Unvalidated;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->beforeCardNumber:Lcom/stripe/android/cards/CardNumber$Unvalidated;

    .line 312
    iput p2, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->latestChangeStart:I

    .line 313
    iput p4, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->latestInsertionSize:I

    :cond_13
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 318
    iget-boolean v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->ignoreChanges:Z

    if-eqz v0, :cond_5

    return-void

    .line 322
    :cond_5
    new-instance v0, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    move-object p1, v1

    :goto_10
    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const-string p1, ""

    :goto_15
    invoke-direct {v0, p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-static {p1}, Lcom/stripe/android/view/CardNumberEditText;->access$getStaticCardAccountRanges$p(Lcom/stripe/android/view/CardNumberEditText;)Lcom/stripe/android/cards/StaticCardAccountRanges;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/stripe/android/cards/StaticCardAccountRanges;->filter(Lcom/stripe/android/cards/CardNumber$Unvalidated;)Ljava/util/List;

    move-result-object p1

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 326
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/stripe/android/model/AccountRange;

    :cond_30
    if-eqz v1, :cond_3f

    .line 331
    invoke-direct {p0, v1}, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->shouldQueryRepository(Lcom/stripe/android/model/AccountRange;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3f

    .line 336
    :cond_39
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/CardNumberEditText;->onAccountRangeResult$stripe_release(Lcom/stripe/android/model/AccountRange;)V

    goto :goto_44

    .line 333
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {p1, v0}, Lcom/stripe/android/view/CardNumberEditText;->queryAccountRangeRepository$stripe_release(Lcom/stripe/android/cards/CardNumber$Unvalidated;)V

    .line 339
    :goto_44
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->isPastedPan(IIILcom/stripe/android/cards/CardNumber$Unvalidated;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->isPastedPan:Z

    .line 341
    iget-boolean p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->isPastedPan:Z

    if-eqz p1, :cond_5f

    .line 342
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v0}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getLength()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getFormatted(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/CardNumberEditText;->updateLengthFilter$stripe_release(I)V

    .line 345
    :cond_5f
    iget-boolean p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->isPastedPan:Z

    if-eqz p1, :cond_68

    .line 346
    invoke-virtual {v0}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getLength()I

    move-result p1

    goto :goto_6e

    .line 348
    :cond_68
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardNumberEditText;->getPanLength$stripe_release()I

    move-result p1

    .line 350
    :goto_6e
    invoke-virtual {v0, p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getFormatted(I)Ljava/lang/String;

    move-result-object p2

    .line 351
    iget-object p3, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    .line 352
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    .line 353
    iget v0, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->latestChangeStart:I

    .line 354
    iget v1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->latestInsertionSize:I

    .line 351
    invoke-virtual {p3, p4, v0, v1, p1}, Lcom/stripe/android/view/CardNumberEditText;->calculateCursorPosition$stripe_release(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->newCursorPosition:Ljava/lang/Integer;

    .line 357
    iput-object p2, p0, Lcom/stripe/android/view/CardNumberEditText$CardNumberTextWatcher;->formattedNumber:Ljava/lang/String;

    return-void
.end method
