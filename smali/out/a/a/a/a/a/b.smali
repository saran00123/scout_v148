.class public final La/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final a:Landroid/widget/ScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/stripe/android/stripe3ds2/views/BrandZoneView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/stripe/android/stripe3ds2/views/InformationZoneView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Lcom/stripe/android/stripe3ds2/views/BrandZoneView;Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;Lcom/stripe/android/stripe3ds2/views/InformationZoneView;)V
    .registers 5
    .param p1    # Landroid/widget/ScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/views/BrandZoneView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/stripe3ds2/views/InformationZoneView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/b;->a:Landroid/widget/ScrollView;

    iput-object p2, p0, La/a/a/a/a/b;->b:Lcom/stripe/android/stripe3ds2/views/BrandZoneView;

    iput-object p3, p0, La/a/a/a/a/b;->c:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    iput-object p4, p0, La/a/a/a/a/b;->d:Lcom/stripe/android/stripe3ds2/views/InformationZoneView;

    return-void
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, La/a/a/a/a/b;->a:Landroid/widget/ScrollView;

    return-object v0
.end method
