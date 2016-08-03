
## 用drb的Ruby客户端,节省你加载require的时间: 查看代码定义show-method
### 1. Server 

```bash
# cd sever_require_method_source-client_cmd_find_source
$ ruby server.rb
Server running at druby://localhost:9000

```

### 2. Client 

```bash
# cd sever_require_method_source-client_cmd_find_source
$ ruby client.rb /Users/emacs/.rvm/gems/ruby-2.2.3/gems/pry-0.10.3/lib/pry/code.rb 12

    def Code(obj)
      case obj
      when Code
        obj
      when ::Method, UnboundMethod, Proc, Pry::Method
        Code.from_method(obj)
      else
        Code.new(obj)
      end
    end

```
