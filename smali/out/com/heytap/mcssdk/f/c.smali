.class public Lcom/heytap/mcssdk/f/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "mcssdk---"

.field private static b:Ljava/lang/String; = "MCS"

.field private static c:Z = false

.field private static d:Z = false

.field private static e:Z = true

.field private static f:Z = true

.field private static g:Z = true

.field private static h:Ljava/lang/String; = "-->"

.field private static i:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)V
    .registers 2

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->g:Z

    if-eqz v0, :cond_10

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mcssdk---"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->c:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mcssdk---"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->c:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->g:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->c:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->e:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mcssdk---"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->e:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public static b(Z)V
    .registers 1

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->e:Z

    return-void
.end method

.method public static b()Z
    .registers 1

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->c:Z

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->d:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mcssdk---"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->d:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public static c(Z)V
    .registers 1

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->d:Z

    return-void
.end method

.method public static c()Z
    .registers 1

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->e:Z

    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->f:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mcssdk---"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->f:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public static d(Z)V
    .registers 1

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->f:Z

    return-void
.end method

.method public static d()Z
    .registers 1

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->d:Z

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->g:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mcssdk---"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->g:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public static e(Z)V
    .registers 1

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->g:Z

    return-void
.end method

.method public static e()Z
    .registers 1

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->f:Z

    return v0
.end method

.method public static f(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/heytap/mcssdk/f/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static f(Z)V
    .registers 1

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->i:Z

    sget-boolean p0, Lcom/heytap/mcssdk/f/c;->i:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->c:Z

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->e:Z

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->d:Z

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->f:Z

    sput-boolean p0, Lcom/heytap/mcssdk/f/c;->g:Z

    return-void
.end method

.method public static f()Z
    .registers 1

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->g:Z

    return v0
.end method

.method public static g(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    return-void
.end method

.method public static g()Z
    .registers 1

    sget-boolean v0, Lcom/heytap/mcssdk/f/c;->i:Z

    return v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/heytap/mcssdk/f/c;->h:Ljava/lang/String;

    return-object v0
.end method
