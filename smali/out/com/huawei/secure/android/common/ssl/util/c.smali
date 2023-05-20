.class public Lcom/huawei/secure/android/common/ssl/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/ssl/util/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_c

    .line 2
    sget-object v0, Lcom/huawei/secure/android/common/ssl/util/c;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/huawei/secure/android/common/ssl/util/c;->a:Landroid/content/Context;

    :cond_c
    return-void
.end method
