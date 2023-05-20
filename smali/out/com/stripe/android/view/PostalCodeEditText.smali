.class public final Lcom/stripe/android/view/PostalCodeEditText;
.super Lcom/stripe/android/view/StripeEditText;
.source "PostalCodeEditText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/PostalCodeEditText$Config;,
        Lcom/stripe/android/view/PostalCodeEditText$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostalCodeEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostalCodeEditText.kt\ncom/stripe/android/view/PostalCodeEditText\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,122:1\n33#2,3:123\n58#3:126\n71#3,10:127\n93#3,3:137\n*E\n*S KotlinDebug\n*F\n+ 1 PostalCodeEditText.kt\ncom/stripe/android/view/PostalCodeEditText\n*L\n24#1,3:123\n48#1:126\n48#1,10:127\n48#1,3:137\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u0017H\u0014J\u0012\u0010\u001c\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u0007H\u0002R+\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/android/view/PostalCodeEditText;",
        "Lcom/stripe/android/view/StripeEditText;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "<set-?>",
        "Lcom/stripe/android/view/PostalCodeEditText$Config;",
        "config",
        "getConfig$stripe_release",
        "()Lcom/stripe/android/view/PostalCodeEditText$Config;",
        "setConfig$stripe_release",
        "(Lcom/stripe/android/view/PostalCodeEditText$Config;)V",
        "config$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "postalCode",
        "",
        "getPostalCode$stripe_release",
        "()Ljava/lang/String;",
        "configureForGlobal",
        "",
        "configureForUs",
        "getTextInputLayout",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "onFinishInflate",
        "updateHint",
        "hintRes",
        "Companion",
        "Config",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final Companion:Lcom/stripe/android/view/PostalCodeEditText$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_LENGTH_GLOBAL:I = 0xd

.field private static final MAX_LENGTH_US:I = 0x5

.field private static final ZIP_CODE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final config$delegate:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/stripe/android/view/PostalCodeEditText;

    const/4 v3, 0x0

    const-string v4, "config"

    const-string v5, "getConfig$stripe_release()Lcom/stripe/android/view/PostalCodeEditText$Config;"

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    aput-object v1, v0, v3

    sput-object v0, Lcom/stripe/android/view/PostalCodeEditText;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/stripe/android/view/PostalCodeEditText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/view/PostalCodeEditText$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/view/PostalCodeEditText;->Companion:Lcom/stripe/android/view/PostalCodeEditText$Companion;

    const-string v0, "^[0-9]{5}$"

    .line 119
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/view/PostalCodeEditText;->ZIP_CODE_PATTERN:Ljava/util/regex/Pattern;

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/PostalCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/PostalCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/view/StripeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 25
    sget-object p1, Lcom/stripe/android/view/PostalCodeEditText$Config;->Global:Lcom/stripe/android/view/PostalCodeEditText$Config;

    .line 123
    new-instance p2, Lcom/stripe/android/view/PostalCodeEditText$$special$$inlined$observable$1;

    invoke-direct {p2, p1, p1, p0}, Lcom/stripe/android/view/PostalCodeEditText$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/stripe/android/view/PostalCodeEditText;)V

    check-cast p2, Lkotlin/properties/ReadWriteProperty;

    .line 125
    iput-object p2, p0, Lcom/stripe/android/view/PostalCodeEditText;->config$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 45
    invoke-virtual {p0}, Lcom/stripe/android/view/PostalCodeEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/stripe/android/R$string;->invalid_zip:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PostalCodeEditText;->setErrorMessage(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PostalCodeEditText;->setMaxLines(I)V

    .line 136
    new-instance p1, Lcom/stripe/android/view/PostalCodeEditText$$special$$inlined$doAfterTextChanged$1;

    invoke-direct {p1, p0}, Lcom/stripe/android/view/PostalCodeEditText$$special$$inlined$doAfterTextChanged$1;-><init>(Lcom/stripe/android/view/PostalCodeEditText;)V

    .line 137
    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_47

    const-string p1, "postalCode"

    .line 53
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PostalCodeEditText;->setAutofillHints([Ljava/lang/String;)V

    :cond_47
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 20
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    .line 21
    sget p3, Landroidx/appcompat/R$attr;->editTextStyle:I

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/PostalCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$configureForGlobal(Lcom/stripe/android/view/PostalCodeEditText;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/stripe/android/view/PostalCodeEditText;->configureForGlobal()V

    return-void
.end method

.method public static final synthetic access$configureForUs(Lcom/stripe/android/view/PostalCodeEditText;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/stripe/android/view/PostalCodeEditText;->configureForUs()V

    return-void
.end method

.method private final configureForGlobal()V
    .registers 4

    .line 76
    sget v0, Lcom/stripe/android/R$string;->address_label_postal_code:I

    invoke-direct {p0, v0}, Lcom/stripe/android/view/PostalCodeEditText;->updateHint(I)V

    const/4 v0, 0x1

    .line 77
    new-array v0, v0, [Landroid/text/InputFilter$LengthFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Lcom/stripe/android/view/PostalCodeEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 78
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    check-cast v0, Landroid/text/method/KeyListener;

    invoke-virtual {p0, v0}, Lcom/stripe/android/view/PostalCodeEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/16 v0, 0x70

    .line 79
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/PostalCodeEditText;->setInputType(I)V

    return-void
.end method

.method private final configureForUs()V
    .registers 5

    .line 66
    sget v0, Lcom/stripe/android/R$string;->address_label_zip_code:I

    invoke-direct {p0, v0}, Lcom/stripe/android/view/PostalCodeEditText;->updateHint(I)V

    const/4 v0, 0x1

    .line 67
    new-array v1, v0, [Landroid/text/InputFilter$LengthFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    check-cast v1, [Landroid/text/InputFilter;

    invoke-virtual {p0, v1}, Lcom/stripe/android/view/PostalCodeEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 68
    invoke-static {v3, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    check-cast v0, Landroid/text/method/KeyListener;

    invoke-virtual {p0, v0}, Lcom/stripe/android/view/PostalCodeEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/4 v0, 0x2

    .line 69
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/PostalCodeEditText;->setInputType(I)V

    return-void
.end method

.method private final getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .registers 3

    .line 100
    invoke-virtual {p0}, Lcom/stripe/android/view/PostalCodeEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 101
    :goto_4
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_14

    .line 102
    instance-of v1, v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v1, :cond_f

    .line 103
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0

    .line 105
    :cond_f
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private final updateHint(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 87
    invoke-direct {p0}, Lcom/stripe/android/view/PostalCodeEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 88
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isHintEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 89
    invoke-virtual {p0}, Lcom/stripe/android/view/PostalCodeEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 91
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PostalCodeEditText;->setHint(I)V

    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public final getConfig$stripe_release()Lcom/stripe/android/view/PostalCodeEditText$Config;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/PostalCodeEditText;->config$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/PostalCodeEditText;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/view/PostalCodeEditText$Config;

    return-object v0
.end method

.method public final getPostalCode$stripe_release()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/stripe/android/view/PostalCodeEditText;->getConfig$stripe_release()Lcom/stripe/android/view/PostalCodeEditText$Config;

    move-result-object v0

    sget-object v1, Lcom/stripe/android/view/PostalCodeEditText$Config;->US:Lcom/stripe/android/view/PostalCodeEditText$Config;

    if-ne v0, v1, :cond_21

    .line 36
    invoke-virtual {p0}, Lcom/stripe/android/view/PostalCodeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/stripe/android/view/PostalCodeEditText;->ZIP_CODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/stripe/android/view/PostalCodeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_25

    :cond_1f
    const/4 v0, 0x0

    goto :goto_25

    .line 40
    :cond_21
    invoke-virtual {p0}, Lcom/stripe/android/view/PostalCodeEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v0

    :goto_25
    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 58
    invoke-super {p0}, Lcom/stripe/android/view/StripeEditText;->onFinishInflate()V

    .line 59
    invoke-direct {p0}, Lcom/stripe/android/view/PostalCodeEditText;->configureForGlobal()V

    return-void
.end method

.method public final setConfig$stripe_release(Lcom/stripe/android/view/PostalCodeEditText$Config;)V
    .registers 5
    .param p1    # Lcom/stripe/android/view/PostalCodeEditText$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/view/PostalCodeEditText;->config$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/PostalCodeEditText;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
