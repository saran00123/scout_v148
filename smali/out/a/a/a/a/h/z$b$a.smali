.class public final La/a/a/a/h/z$b$a;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/h/z$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lkotlin/Lazy;

.field public final b:La/a/a/a/h/z$a;

.field public final c:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/a/a/h/z$a;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/h/z$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brand"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiCustomization"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/stripe/android/stripe3ds2/R$style;->Stripe3DS2FullScreenDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, La/a/a/a/h/z$b$a;->b:La/a/a/a/h/z$a;

    iput-object p3, p0, La/a/a/a/h/z$b$a;->c:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;

    new-instance p1, La/a/a/a/h/z$b$a$a;

    invoke-direct {p1, p0}, La/a/a/a/h/z$b$a$a;-><init>(La/a/a/a/h/z$b$a;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/h/z$b$a;->a:Lkotlin/Lazy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/a/j;
    .registers 2

    iget-object v0, p0, La/a/a/a/h/z$b$a;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/j;

    return-object v0
.end method

.method public onStart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_d
    invoke-virtual {p0}, La/a/a/a/h/z$b$a;->a()La/a/a/a/a/j;

    move-result-object v0

    .line 1
    iget-object v0, v0, La/a/a/a/a/j;->a:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, La/a/a/a/h/z$b$a;->a()La/a/a/a/a/j;

    move-result-object v0

    iget-object v0, v0, La/a/a/a/a/j;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, La/a/a/a/h/z$b$a;->b:La/a/a/a/h/z$a;

    .line 3
    iget v2, v2, La/a/a/a/h/z$a;->b:I

    .line 4
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, La/a/a/a/h/z$b$a;->b:La/a/a/a/h/z$a;

    .line 5
    iget v2, v2, La/a/a/a/h/z$a;->c:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->INSTANCE:Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;

    invoke-virtual {p0}, La/a/a/a/h/z$b$a;->a()La/a/a/a/a/j;

    move-result-object v1

    iget-object v1, v1, La/a/a/a/a/j;->c:Landroid/widget/ProgressBar;

    const-string/jumbo v2, "viewBinding.progressBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/h/z$b$a;->c:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->applyProgressBarColor$3ds2sdk_release(Landroid/widget/ProgressBar;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;)V

    return-void
.end method
