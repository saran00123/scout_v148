.class public final Lcom/meizu/cloud/pushsdk/c/c/h;
.super Lcom/meizu/cloud/pushsdk/c/c/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/c/c/h$a;,
        Lcom/meizu/cloud/pushsdk/c/c/h$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/meizu/cloud/pushsdk/c/c/g;

.field public static final b:Lcom/meizu/cloud/pushsdk/c/c/g;

.field public static final c:Lcom/meizu/cloud/pushsdk/c/c/g;

.field public static final d:Lcom/meizu/cloud/pushsdk/c/c/g;

.field public static final e:Lcom/meizu/cloud/pushsdk/c/c/g;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:Lcom/meizu/cloud/pushsdk/c/g/e;

.field private final j:Lcom/meizu/cloud/pushsdk/c/c/g;

.field private final k:Lcom/meizu/cloud/pushsdk/c/c/g;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/cloud/pushsdk/c/c/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/c/g;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/g;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/c/h;->a:Lcom/meizu/cloud/pushsdk/c/c/g;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/c/g;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/g;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/c/h;->b:Lcom/meizu/cloud/pushsdk/c/c/g;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/c/g;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/g;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/c/h;->c:Lcom/meizu/cloud/pushsdk/c/c/g;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/c/g;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/g;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/c/h;->d:Lcom/meizu/cloud/pushsdk/c/c/g;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/c/g;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/g;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/c/h;->e:Lcom/meizu/cloud/pushsdk/c/c/g;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_40

    sput-object v1, Lcom/meizu/cloud/pushsdk/c/c/h;->f:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_46

    sput-object v1, Lcom/meizu/cloud/pushsdk/c/c/h;->g:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/c/h;->h:[B

    return-void

    nop

    :array_40
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_46
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lcom/meizu/cloud/pushsdk/c/g/e;Lcom/meizu/cloud/pushsdk/c/c/g;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/c/g/e;",
            "Lcom/meizu/cloud/pushsdk/c/c/g;",
            "Ljava/util/List<",
            "Lcom/meizu/cloud/pushsdk/c/c/h$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/c/c/j;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->m:J

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->i:Lcom/meizu/cloud/pushsdk/c/g/e;

    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->j:Lcom/meizu/cloud/pushsdk/c/c/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/c/g/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/c/c/g;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/g;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->k:Lcom/meizu/cloud/pushsdk/c/c/g;

    invoke-static {p3}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->l:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/meizu/cloud/pushsdk/c/g/c;Z)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_9

    new-instance p1, Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-direct {p1}, Lcom/meizu/cloud/pushsdk/c/g/b;-><init>()V

    move-object v0, p1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_ab

    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->l:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/cloud/pushsdk/c/c/h$b;

    invoke-static {v6}, Lcom/meizu/cloud/pushsdk/c/c/h$b;->a(Lcom/meizu/cloud/pushsdk/c/c/h$b;)Lcom/meizu/cloud/pushsdk/c/c/c;

    move-result-object v7

    invoke-static {v6}, Lcom/meizu/cloud/pushsdk/c/c/h$b;->b(Lcom/meizu/cloud/pushsdk/c/c/h$b;)Lcom/meizu/cloud/pushsdk/c/c/j;

    move-result-object v6

    sget-object v8, Lcom/meizu/cloud/pushsdk/c/c/h;->h:[B

    invoke-interface {p1, v8}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    iget-object v8, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->i:Lcom/meizu/cloud/pushsdk/c/g/e;

    invoke-interface {p1, v8}, Lcom/meizu/cloud/pushsdk/c/g/c;->b(Lcom/meizu/cloud/pushsdk/c/g/e;)Lcom/meizu/cloud/pushsdk/c/g/c;

    sget-object v8, Lcom/meizu/cloud/pushsdk/c/c/h;->g:[B

    invoke-interface {p1, v8}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    if-eqz v7, :cond_5d

    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/c/c/c;->a()I

    move-result v8

    move v9, v2

    :goto_3d
    if-ge v9, v8, :cond_5d

    invoke-virtual {v7, v9}, Lcom/meizu/cloud/pushsdk/c/c/c;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/meizu/cloud/pushsdk/c/g/c;->b(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object v10

    sget-object v11, Lcom/meizu/cloud/pushsdk/c/c/h;->f:[B

    invoke-interface {v10, v11}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object v10

    invoke-virtual {v7, v9}, Lcom/meizu/cloud/pushsdk/c/c/c;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/meizu/cloud/pushsdk/c/g/c;->b(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object v10

    sget-object v11, Lcom/meizu/cloud/pushsdk/c/c/h;->g:[B

    invoke-interface {v10, v11}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    :cond_5d
    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/c/c/j;->a()Lcom/meizu/cloud/pushsdk/c/c/g;

    move-result-object v7

    if-eqz v7, :cond_76

    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Lcom/meizu/cloud/pushsdk/c/g/c;->b(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object v8

    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/c/c/g;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/meizu/cloud/pushsdk/c/g/c;->b(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object v7

    sget-object v8, Lcom/meizu/cloud/pushsdk/c/c/h;->g:[B

    invoke-interface {v7, v8}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    :cond_76
    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/c/c/j;->b()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_90

    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, Lcom/meizu/cloud/pushsdk/c/g/c;->b(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lcom/meizu/cloud/pushsdk/c/g/c;->e(J)Lcom/meizu/cloud/pushsdk/c/g/c;

    move-result-object v9

    sget-object v10, Lcom/meizu/cloud/pushsdk/c/c/h;->g:[B

    invoke-interface {v9, v10}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    goto :goto_96

    :cond_90
    if-eqz p2, :cond_96

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->j()V

    return-wide v9

    :cond_96
    :goto_96
    sget-object v9, Lcom/meizu/cloud/pushsdk/c/c/h;->g:[B

    invoke-interface {p1, v9}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    if-eqz p2, :cond_9f

    add-long/2addr v4, v7

    goto :goto_a2

    :cond_9f
    invoke-virtual {v6, p1}, Lcom/meizu/cloud/pushsdk/c/c/j;->a(Lcom/meizu/cloud/pushsdk/c/g/c;)V

    :goto_a2
    sget-object v6, Lcom/meizu/cloud/pushsdk/c/c/h;->g:[B

    invoke-interface {p1, v6}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    :cond_ab
    sget-object v1, Lcom/meizu/cloud/pushsdk/c/c/h;->h:[B

    invoke-interface {p1, v1}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->i:Lcom/meizu/cloud/pushsdk/c/g/e;

    invoke-interface {p1, v1}, Lcom/meizu/cloud/pushsdk/c/g/c;->b(Lcom/meizu/cloud/pushsdk/c/g/e;)Lcom/meizu/cloud/pushsdk/c/g/c;

    sget-object v1, Lcom/meizu/cloud/pushsdk/c/c/h;->h:[B

    invoke-interface {p1, v1}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    sget-object v1, Lcom/meizu/cloud/pushsdk/c/c/h;->g:[B

    invoke-interface {p1, v1}, Lcom/meizu/cloud/pushsdk/c/g/c;->c([B)Lcom/meizu/cloud/pushsdk/c/g/c;

    if-eqz p2, :cond_c9

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->a()J

    move-result-wide p1

    add-long/2addr v4, p1

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->j()V

    :cond_c9
    return-wide v4
.end method


# virtual methods
.method public a()Lcom/meizu/cloud/pushsdk/c/c/g;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->k:Lcom/meizu/cloud/pushsdk/c/c/g;

    return-object v0
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/g/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/c/c/h;->a(Lcom/meizu/cloud/pushsdk/c/g/c;Z)J

    return-void
.end method

.method public b()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->m:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/c/c/h;->a(Lcom/meizu/cloud/pushsdk/c/g/c;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/c/h;->m:J

    return-wide v0
.end method
