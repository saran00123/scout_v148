.class public Lcom/shuyu/gsyvideoplayer/render/effect/CrossProcessEffect;
.super Ljava/lang/Object;
.source "CrossProcessEffect.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShader(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;
    .registers 2

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  vec3 ncolor = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (color.r < 0.5) {\n    value = color.r;\n  } else {\n    value = 1.0 - color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (color.r < 0.5) {\n    ncolor.r = red;\n  } else {\n    ncolor.r = 1.0 - red;\n  }\n  if (color.g < 0.5) {\n    value = color.g;\n  } else {\n    value = 1.0 - color.g;\n  }\n  float green = 2.0 * value * value;\n  if (color.g < 0.5) {\n    ncolor.g = green;\n  } else {\n    ncolor.g = 1.0 - green;\n  }\n  ncolor.b = color.b * 0.5 + 0.25;\n  gl_FragColor = vec4(ncolor.rgb, color.a);\n}\n"

    return-object p1
.end method
