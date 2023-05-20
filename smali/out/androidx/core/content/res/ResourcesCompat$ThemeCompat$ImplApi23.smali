.class Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat$ThemeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplApi23"
.end annotation


# static fields
.field private static sRebaseMethod:Ljava/lang/reflect/Method;

.field private static sRebaseMethodFetched:Z

.field private static final sRebaseMethodLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 671
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethodLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static rebase(Landroid/content/res/Resources$Theme;)V
    .registers 7
    .param p0    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 677
    sget-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethodLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_3
    sget-boolean v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethodFetched:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_40

    const/4 v2, 0x0

    if-nez v1, :cond_25

    const/4 v1, 0x1

    .line 680
    :try_start_9
    const-class v3, Landroid/content/res/Resources$Theme;

    const-string v4, "rebase"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethod:Ljava/lang/reflect/Method;

    .line 681
    sget-object v3, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1a} :catch_1b
    .catchall {:try_start_9 .. :try_end_1a} :catchall_40

    goto :goto_23

    :catch_1b
    move-exception v3

    :try_start_1c
    const-string v4, "ResourcesCompat"

    const-string v5, "Failed to retrieve rebase() method"

    .line 683
    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    :goto_23
    sput-boolean v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethodFetched:Z

    .line 687
    :cond_25
    sget-object v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethod:Ljava/lang/reflect/Method;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_40

    if-eqz v1, :cond_3e

    .line 689
    :try_start_29
    sget-object v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_30} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_30} :catch_31
    .catchall {:try_start_29 .. :try_end_30} :catchall_40

    goto :goto_3e

    :catch_31
    move-exception p0

    goto :goto_34

    :catch_33
    move-exception p0

    :goto_34
    :try_start_34
    const-string v1, "ResourcesCompat"

    const-string v2, "Failed to invoke rebase() method via reflection"

    .line 691
    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 692
    sput-object p0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethod:Ljava/lang/reflect/Method;

    .line 695
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_40

    throw p0
.end method
