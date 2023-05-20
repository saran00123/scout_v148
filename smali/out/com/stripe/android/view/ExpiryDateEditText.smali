.class public final Lcom/stripe/android/view/ExpiryDateEditText;
.super Lcom/stripe/android/view/StripeEditText;
.source "ExpiryDateEditText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/ExpiryDateEditText$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpiryDateEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpiryDateEditText.kt\ncom/stripe/android/view/ExpiryDateEditText\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,273:1\n37#2,2:274\n*E\n*S KotlinDebug\n*F\n+ 1 ExpiryDateEditText.kt\ncom/stripe/android/view/ExpiryDateEditText\n*L\n31#1,2:274\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 ,2\u00020\u0001:\u0001,B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\"\u001a\u00020\u000fH\u0002J\u0018\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020\nH\u0002J-\u0010&\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0008+R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR \u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R(\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00198FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u0006-"
    }
    d2 = {
        "Lcom/stripe/android/view/ExpiryDateEditText;",
        "Lcom/stripe/android/view/StripeEditText;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "accessibilityText",
        "",
        "getAccessibilityText",
        "()Ljava/lang/String;",
        "completionCallback",
        "Lkotlin/Function0;",
        "",
        "getCompletionCallback$stripe_release",
        "()Lkotlin/jvm/functions/Function0;",
        "setCompletionCallback$stripe_release",
        "(Lkotlin/jvm/functions/Function0;)V",
        "<set-?>",
        "",
        "isDateValid",
        "()Z",
        "validDateFields",
        "Lkotlin/Pair;",
        "getValidDateFields$annotations",
        "()V",
        "getValidDateFields",
        "()Lkotlin/Pair;",
        "validatedDate",
        "Lcom/stripe/android/model/ExpirationDate$Validated;",
        "getValidatedDate",
        "()Lcom/stripe/android/model/ExpirationDate$Validated;",
        "listenForTextChanges",
        "updateInputValues",
        "month",
        "year",
        "updateSelectionIndex",
        "newLength",
        "editActionStart",
        "editActionAddition",
        "maxInputLength",
        "updateSelectionIndex$stripe_release",
        "Companion",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final Companion:Lcom/stripe/android/view/ExpiryDateEditText$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INVALID_INPUT:I = -0x1

.field private static final MAX_INPUT_LENGTH:I = 0x5


# instance fields
.field private synthetic completionCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isDateValid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/view/ExpiryDateEditText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/view/ExpiryDateEditText$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/view/ExpiryDateEditText;->Companion:Lcom/stripe/android/view/ExpiryDateEditText$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/ExpiryDateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/ExpiryDateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 23
    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/view/StripeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p2, 0x2

    .line 26
    invoke-virtual {p0, p2}, Lcom/stripe/android/view/ExpiryDateEditText;->setInputType(I)V

    .line 28
    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/stripe/android/R$integer;->stripe_date_length:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 28
    invoke-direct {p2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 27
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    .line 275
    new-array p2, p2, [Landroid/text/InputFilter$LengthFilter;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5d

    check-cast p1, [Landroid/text/InputFilter;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/ExpiryDateEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 33
    invoke-virtual {p0}, Lcom/stripe/android/view/ExpiryDateEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/stripe/android/R$string;->invalid_expiry_year:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/ExpiryDateEditText;->setErrorMessage(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/stripe/android/view/ExpiryDateEditText;->listenForTextChanges()V

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_56

    const-string p1, "creditCardExpirationDate"

    .line 37
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/ExpiryDateEditText;->setAutofillHints([Ljava/lang/String;)V

    .line 43
    :cond_56
    sget-object p1, Lcom/stripe/android/view/ExpiryDateEditText$completionCallback$1;->INSTANCE:Lcom/stripe/android/view/ExpiryDateEditText$completionCallback$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText;->completionCallback:Lkotlin/jvm/functions/Function0;

    return-void

    .line 275
    :cond_5d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 21
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    .line 22
    sget p3, Landroidx/appcompat/R$attr;->editTextStyle:I

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/ExpiryDateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$Companion()Lcom/stripe/android/view/ExpiryDateEditText$Companion;
    .registers 1

    sget-object v0, Lcom/stripe/android/view/ExpiryDateEditText;->Companion:Lcom/stripe/android/view/ExpiryDateEditText$Companion;

    return-object v0
.end method

.method public static final synthetic access$isDateValid$p(Lcom/stripe/android/view/ExpiryDateEditText;)Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lcom/stripe/android/view/ExpiryDateEditText;->isDateValid:Z

    return p0
.end method

.method public static final synthetic access$setDateValid$p(Lcom/stripe/android/view/ExpiryDateEditText;Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/stripe/android/view/ExpiryDateEditText;->isDateValid:Z

    return-void
.end method

.method public static final synthetic access$updateInputValues(Lcom/stripe/android/view/ExpiryDateEditText;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/view/ExpiryDateEditText;->updateInputValues(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getValidDateFields$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use validatedDate"
    .end annotation

    return-void
.end method

.method private final listenForTextChanges()V
    .registers 2

    .line 78
    new-instance v0, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/ExpiryDateEditText$listenForTextChanges$1;-><init>(Lcom/stripe/android/view/ExpiryDateEditText;)V

    check-cast v0, Landroid/text/TextWatcher;

    .line 77
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/ExpiryDateEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private final updateInputValues(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eq v0, v1, :cond_e

    move p1, v2

    goto :goto_38

    .line 252
    :cond_e
    :try_start_e
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/ExpiryDateEditText;

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 252
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1f} :catch_20

    goto :goto_2b

    :catch_20
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 254
    :goto_2b
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object p1, v3

    :cond_32
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 257
    :goto_38
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_3f

    goto :goto_6f

    .line 260
    :cond_3f
    :try_start_3f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/ExpiryDateEditText;

    .line 261
    sget-object v0, Lcom/stripe/android/view/DateUtils;->INSTANCE:Lcom/stripe/android/view/DateUtils;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/stripe/android/view/DateUtils;->convertTwoDigitYearToFour(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 260
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_56} :catch_57

    goto :goto_62

    :catch_57
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 262
    :goto_62
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    move-object p2, v3

    :cond_69
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 265
    :goto_6f
    invoke-static {p1, v2}, Lcom/stripe/android/view/DateUtils;->isExpiryDataValid(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/stripe/android/view/ExpiryDateEditText;->isDateValid:Z

    return-void
.end method


# virtual methods
.method protected getAccessibilityText()Ljava/lang/String;
    .registers 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/stripe/android/view/ExpiryDateEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stripe/android/R$string;->acc_label_expiry_date_node:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/stripe/android/view/ExpiryDateEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCompletionCallback$stripe_release()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/stripe/android/view/ExpiryDateEditText;->completionCallback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getValidDateFields()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/stripe/android/view/ExpiryDateEditText;->getValidatedDate()Lcom/stripe/android/model/ExpirationDate$Validated;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 60
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {v0}, Lcom/stripe/android/model/ExpirationDate$Validated;->getMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/android/model/ExpirationDate$Validated;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return-object v1
.end method

.method public final getValidatedDate()Lcom/stripe/android/model/ExpirationDate$Validated;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 65
    iget-boolean v0, p0, Lcom/stripe/android/view/ExpiryDateEditText;->isDateValid:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 66
    sget-object v0, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->Companion:Lcom/stripe/android/model/ExpirationDate$Unvalidated$Companion;

    invoke-virtual {p0}, Lcom/stripe/android/view/ExpiryDateEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/ExpirationDate$Unvalidated$Companion;->create(Ljava/lang/String;)Lcom/stripe/android/model/ExpirationDate$Unvalidated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->validate()Lcom/stripe/android/model/ExpirationDate$Validated;

    move-result-object v0

    goto :goto_17

    :cond_14
    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_17
    return-object v0

    .line 67
    :cond_18
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final isDateValid()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/stripe/android/view/ExpiryDateEditText;->isDateValid:Z

    return v0
.end method

.method public final setCompletionCallback$stripe_release(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/stripe/android/view/ExpiryDateEditText;->completionCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final updateSelectionIndex$stripe_release(IIII)I
    .registers 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt p2, v2, :cond_b

    add-int v3, p2, p3

    if-lt v3, v2, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    if-nez p3, :cond_12

    const/4 v3, 0x3

    if-ne p2, v3, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    add-int/2addr p2, p3

    add-int/2addr p2, v2

    if-eqz v0, :cond_1b

    if-lez p2, :cond_1b

    add-int/lit8 p2, p2, -0x1

    :cond_1b
    if-gt p2, p1, :cond_1e

    move p1, p2

    .line 245
    :cond_1e
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
