
### 1. Server 

```bash
$ ruby server.rb
Server running at druby://localhost:9000

```

### 2. Client 

```bash

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
