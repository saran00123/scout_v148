.class public final Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;
.super Lcom/stripe/android/paymentsheet/BaseAddCardFragment;
.source "PaymentOptionsAddCardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentOptionsAddCardFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentOptionsAddCardFragment.kt\ncom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,17:1\n79#2,2:18\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentOptionsAddCardFragment.kt\ncom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment\n*L\n6#1,2:18\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;",
        "Lcom/stripe/android/paymentsheet/BaseAddCardFragment;",
        "()V",
        "sheetViewModel",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;",
        "getSheetViewModel",
        "()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;",
        "sheetViewModel$delegate",
        "Lkotlin/Lazy;",
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
.field private final sheetViewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 5
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;-><init>()V

    .line 6
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment$sheetViewModel$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment$sheetViewModel$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 18
    const-class v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment$$special$$inlined$activityViewModels$1;

    invoke-direct {v2, p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment$$special$$inlined$activityViewModels$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v1, v2, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;->sheetViewModel$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public getSheetViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;->sheetViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    return-object v0
.end method

.method public bridge synthetic getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsAddCardFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    return-object v0
.end method
