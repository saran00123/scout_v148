.class public Landroidx/appcompat/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static sCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/widget/TintContextWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 97
    new-instance v0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 98
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 99
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_34

    .line 101
    :cond_26
    new-instance v0, Landroidx/appcompat/widget/TintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Landroidx/appcompat/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    :goto_34
    return-void
.end method

.method private static shouldWrap(Landroid/content/Context;)Z
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    instance-of v0, p0, Landroidx/appcompat/widget/TintContextWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/TintResources;

    if-nez v0, :cond_23

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    instance-of p0, p0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    if-eqz p0, :cond_16

    goto :goto_23

    .line 85
    :cond_16
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_22

    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result p0

    if-eqz p0, :cond_23

    :cond_22
    const/4 v1, 0x1

    :cond_23
    :goto_23
    return v1
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-static {p0}, Landroidx/appcompat/widget/TintContextWrapper;->shouldWrap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 47
    sget-object v0, Landroidx/appcompat/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_9
    sget-object v1, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    goto :goto_60

    .line 52
    :cond_15
    sget-object v1, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1d
    if-ltz v1, :cond_37

    .line 53
    sget-object v2, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2f

    .line 54
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_34

    .line 55
    :cond_2f
    sget-object v2, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 59
    :cond_37
    sget-object v1, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3f
    if-ltz v1, :cond_60

    .line 60
    sget-object v2, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_52

    .line 61
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/TintContextWrapper;

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    :goto_53
    if-eqz v2, :cond_5d

    .line 62
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-ne v3, p0, :cond_5d

    .line 63
    monitor-exit v0

    return-object v2

    :cond_5d
    add-int/lit8 v1, v1, -0x1

    goto :goto_3f

    .line 69
    :cond_60
    :goto_60
    new-instance v1, Landroidx/appcompat/widget/TintContextWrapper;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/TintContextWrapper;-><init>(Landroid/content/Context;)V

    .line 70
    sget-object p0, Landroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0

    return-object v1

    :catchall_71
    move-exception p0

    .line 72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_9 .. :try_end_73} :catchall_71

    throw p0

    :cond_74
    return-object p0
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 108
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_8

    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public setTheme(I)V
    .registers 4

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_8

    .line 114
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    goto :goto_c

    :cond_8
    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_c
    return-void
.end method
