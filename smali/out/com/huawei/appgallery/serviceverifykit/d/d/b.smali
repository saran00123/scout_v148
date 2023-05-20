.class public Lcom/huawei/appgallery/serviceverifykit/d/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    invoke-direct {v0}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;-><init>()V

    sput-object v0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.huawei.appgallery.log.LogAdaptor"

    :try_start_5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a:Z
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_f

    :catch_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a:Z

    :goto_f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/huawei/appgallery/serviceverifykit/d/d/a;->a:Lcom/huawei/appgallery/serviceverifykit/d/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/appgallery/log/LogAdaptor;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    iget-boolean v0, p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/huawei/appgallery/serviceverifykit/d/d/a;->a:Lcom/huawei/appgallery/serviceverifykit/d/d/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/appgallery/log/LogAdaptor;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_a
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/huawei/appgallery/serviceverifykit/d/d/a;->a:Lcom/huawei/appgallery/serviceverifykit/d/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/appgallery/log/LogAdaptor;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/huawei/appgallery/serviceverifykit/d/d/a;->a:Lcom/huawei/appgallery/serviceverifykit/d/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/appgallery/log/LogAdaptor;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method
