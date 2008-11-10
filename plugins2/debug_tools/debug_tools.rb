
module Com::RedcarIDE
  class DebugTools < Redcar::Plugin
    class PrintCommandHistory < Redcar::Command
      menu "Debug/Print Command History"
      norecord
      def execute
        puts "Command History"
        puts Redcar::CommandHistory.history.reverse[0..15].map{|com| "  " + com.to_s}
      end
    end

    class PrintScopeTree < Redcar::EditTabCommand
      menu "Debug/Print Scope Tree"
      norecord
      def execute
        puts "Scope Tree"
        puts tab.document.parser.root.pretty(0)
      end
    end
    
    class PrintScopeAtCursor < Redcar::EditTabCommand
     menu "Debug/Print Scope at Cursor"
     norecord
     def execute
      puts "Scope at cursor"
      puts tab.doc.cursor_scope.inspect
     end
    end
  end
end

#require File.dirname(__FILE__) + "/spec/spec.rb"
