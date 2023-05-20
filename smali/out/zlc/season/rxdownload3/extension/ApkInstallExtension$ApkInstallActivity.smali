.class public final Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;
.super Landroid/app/Activity;
.source "ApkInstallExtension.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzlc/season/rxdownload3/extension/ApkInstallExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApkInstallActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\"\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0014J\u0012\u0010\u0012\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;",
        "Landroid/app/Activity;",
        "()V",
        "apkFile",
        "Ljava/io/File;",
        "installPackageName",
        "",
        "installTime",
        "",
        "check",
        "",
        "createApkInstallIntent",
        "Landroid/content/Intent;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "rxdownload3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final APK_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

# The value of this static final field might be set in the static constructor
.field private static final ARGS_IN_PATH:Ljava/lang/String; = "argsInPath"

.field public static final Companion:Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity$Companion;

# The value of this static final field might be set in the static constructor
.field private static final RC_INSTALL_APK:I = 0x64


# instance fields
.field private apkFile:Ljava/io/File;

.field private installPackageName:Ljava/lang/String;

.field private installTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->Companion:Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity$Companion;

    const-string v0, "application/vnd.android.package-archive"

    .line 87
    sput-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->APK_TYPE:Ljava/lang/String;

    const-string v0, "argsInPath"

    .line 88
    sput-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->ARGS_IN_PATH:Ljava/lang/String;

    const/16 v0, 0x64

    .line 89
    sput v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->RC_INSTALL_APK:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 102
    iput-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->installPackageName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getARGS_IN_PATH$cp()Ljava/lang/String;
    .registers 1

    .line 84
    sget-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->ARGS_IN_PATH:Ljava/lang/String;

    return-object v0
.end method

.method private final check()V
    .registers 6

    const/4 v0, 0x0

    .line 137
    :try_start_1
    invoke-virtual {p0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->installPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 139
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 140
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 141
    iget-wide v3, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->installTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_25

    .line 142
    sget-object v1, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->INSTANCE:Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;

    const/4 v2, 0x1

    iget-object v3, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->installPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->dispatch(ZLjava/lang/String;)V

    goto :goto_34

    .line 144
    :cond_25
    sget-object v1, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->INSTANCE:Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;

    iget-object v2, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->installPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->dispatch(ZLjava/lang/String;)V
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_34

    .line 147
    :catch_2d
    sget-object v1, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->INSTANCE:Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;

    iget-object v2, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->installPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->dispatch(ZLjava/lang/String;)V

    :goto_34
    return-void
.end method

.method private final createApkInstallIntent()Landroid/content/Intent;
    .registers 6

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".rxdownload.provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "apkFile"

    const/16 v4, 0x18

    if-lt v2, v4, :cond_33

    .line 118
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    iget-object v4, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->apkFile:Ljava/io/File;

    if-nez v4, :cond_2e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2e
    invoke-static {v2, v1, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3e

    .line 120
    :cond_33
    iget-object v1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->apkFile:Ljava/io/File;

    if-nez v1, :cond_3a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3a
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 122
    :goto_3e
    sget-object v2, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->APK_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    sget p2, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->RC_INSTALL_APK:I

    if-ne p1, p2, :cond_a

    .line 130
    invoke-direct {p0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->check()V

    .line 132
    :cond_a
    invoke-virtual {p0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->ARGS_IN_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->apkFile:Ljava/io/File;

    .line 108
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->apkFile:Ljava/io/File;

    if-nez v0, :cond_20

    const-string v1, "apkFile"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_20
    invoke-static {p1, v0}, Lzlc/season/rxdownload3/helper/UtilsKt;->getPackageName(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->installPackageName:Ljava/lang/String;

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->installTime:J

    .line 111
    invoke-direct {p0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->createApkInstallIntent()Landroid/content/Intent;

    move-result-object p1

    sget v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->RC_INSTALL_APK:I

    invoke-virtual {p0, p1, v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
