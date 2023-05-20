.class public final La/a/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final a:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Landroid/widget/RadioGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final i:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final j:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout;Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;)V
    .registers 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/RadioGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/g;->a:Landroid/view/View;

    iput-object p2, p0, La/a/a/a/a/g;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, La/a/a/a/a/g;->c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;

    iput-object p4, p0, La/a/a/a/a/g;->d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    iput-object p5, p0, La/a/a/a/a/g;->e:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    iput-object p6, p0, La/a/a/a/a/g;->f:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    iput-object p7, p0, La/a/a/a/a/g;->g:Landroid/widget/RadioButton;

    iput-object p8, p0, La/a/a/a/a/g;->h:Landroid/widget/RadioGroup;

    iput-object p9, p0, La/a/a/a/a/g;->i:Landroid/widget/RadioButton;

    iput-object p10, p0, La/a/a/a/a/g;->j:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)La/a/a/a/a/g;
    .registers 14
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/stripe/android/stripe3ds2/R$layout;->stripe_challenge_zone_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1
    sget p0, Lcom/stripe/android/stripe3ds2/R$id;->czv_entry_view:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_70

    sget p0, Lcom/stripe/android/stripe3ds2/R$id;->czv_header:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;

    if-eqz v4, :cond_70

    sget p0, Lcom/stripe/android/stripe3ds2/R$id;->czv_info:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    if-eqz v5, :cond_70

    sget p0, Lcom/stripe/android/stripe3ds2/R$id;->czv_resend_button:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    if-eqz v6, :cond_70

    sget p0, Lcom/stripe/android/stripe3ds2/R$id;->czv_submit_button:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    if-eqz v7, :cond_70

    sget p0, Lcom/stripe/android/stripe3ds2/R$id;->czv_whitelist_no_button:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_70

    sget p0, Lcom/stripe/android/stripe3ds2/R$id;->czv_whitelist_radio_group:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RadioGroup;

    if-eqz v9, :cond_70

    sget p0, Lcom/stripe/android/stripe3ds2/R$id;->czv_whitelist_yes_button:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RadioButton;

    if-eqz v10, :cond_70

    sget p0, Lcom/stripe/android/stripe3ds2/R$id;->czv_whitelisting_label:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    if-eqz v11, :cond_70

    new-instance p0, La/a/a/a/a/g;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, La/a/a/a/a/g;-><init>(Landroid/view/View;Landroid/widget/FrameLayout;Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;)V

    return-object p0

    :cond_70
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/a/g;->a:Landroid/view/View;

    return-object v0
.end method
